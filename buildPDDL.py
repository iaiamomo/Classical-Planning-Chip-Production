from description import *
from actorsAPI import *
import config
import context

def buildPDDL():
    servicesAPI = searchServices()

    services = [] 
    capabilities = [] 
    instances = context.instances 
    tasks = [] 
    atomicTerms = context.atomicTerms
    #groundAtomicTerms = context.groundAtomicTerms
    groundAtomicTerms = []

    goal = context.goal
    requirements = context.requirements

    for service in servicesAPI:
        s = service["id"]
        services.append(s)

        features = service["features"]
        attributes = service["attributes"]
        serviceType = attributes["type"]

        for f in features.keys():
            feature = features[f]
            value = feature["properties"]["value"]
            groundAtomicTerms.append(groundAtomicTerm(f,s,value))

        if serviceType == "Service":        
            actions = attributes["actions"]
            for a in actions:
                action = actions[a]
                props = action["properties"]
                featureType = props["type"]
                
                if featureType == "operation":
                    capabilities.append(a)
                    name = props["command"]
                    cost = props["cost"]
                    params = props["parameters"]
                    
                    posPrec = []
                    negPrec = []
                    addEff = []
                    delEff = []
                    try:
                        posPrec = props["requirements"]["positive"]
                    except KeyError:
                        pass
                    try:
                        negPrec = props["requirements"]["negative"]
                    except KeyError:
                        pass
                    try:
                        addEff = props["effects"]["added"]
                    except KeyError:
                        pass
                    try:
                        delEff = props["effects"]["deleted"]
                    except KeyError:
                        pass

                    providedBy = s 
                    
                    task = Task(name,
                                params,
                                posPrec,
                                negPrec,
                                addEff,
                                delEff,
                                providedBy,
                                a,
                                cost
                                )
                    tasks.append(task)
                
    desc = Description(services,capabilities,
                       instances,tasks,atomicTerms,
                       groundAtomicTerms)

    domainFile = open(config.PDDL["domainFile"], 'w+')
    domainFile.write(desc.getPDDLDomain(config.PDDL["domainName"],requirements))
    domainFile.close()

    problemFile = open(config.PDDL["problemFile"], 'w+')
    problemFile.write(desc.getPDDLProblem(config.PDDL["domainName"],config.PDDL["problemName"],goal))
    problemFile.close()

    return desc
    
if __name__ == "__main__":
    buildPDDL()             
    
