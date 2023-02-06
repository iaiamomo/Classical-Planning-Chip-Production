import asyncio
import websockets
import json
import config
import subprocess
from buildPDDL import *
from config import *
import urllib.parse


async def executionEngine():
    # Retrieve information of Things and construct PDDL domain and problem files
    print("Collecting problem data...")
    desc = buildPDDL()
    
    # Call planner
    # If plan not found, return 2 
    print("Invoking planner...")
    command = "./dawnward/fast-downward.py " + config.PDDL["domainFile"] + " " + config.PDDL["problemFile"] + " " + "--search " + '"astar(lmcut())"' 
    result = subprocess.run(command, shell = True, stdout=subprocess.PIPE)
    print(f"result planner: {result.returncode}")
    if (result.returncode > 9):
        return 2
            
    print("Plan found! Proceeding to orchestrate devices...")
    with open(config.PDDL["planFile"]) as file_in:
        for line in file_in:
            if line[0] == ";":
                break
            tokens = line.replace("(","").replace(")","").strip().split(" ")
            thingId = tokens[1]
            cmd = tokens[0]
            params = []
            for i in range(2, len(tokens)):
                params.append(tokens[i])

            expected = desc.getGroundedEffect(cmd, params)
            print("Issuing command " + tokens[0] +
                    " to " + thingId + " with parameters " +
                    str(params))
                    
            print("Expected result: " + str(expected))

            body = json.dumps({"command": cmd, "service_id": thingId, "parameters": params})
            output = None
            while True:
                try:
                    response = requests.post(f'https://localhost:8080/execute-service-action/{thingId}', data=body)
                except requests.exceptions.Timeout:
                    print("Expired timer! Adapting...")
                    return 1
                event = json.loads(response)
                value = event["value"]
                path = event["path"]

                if value == "terminated":
                    break
                if "output" in path:
                    output = value

            print("Received output: " + str(output))
            if output != expected:
                print("Discrepancy detected! Adapting...")
                return 1
    return 0

result = asyncio.get_event_loop().run_until_complete(executionEngine())
while result == 1:
    result = asyncio.get_event_loop().run_until_complete(executionEngine())

if result == 0:
    print("Success!")
else:
    print("Plan not found!")
                
