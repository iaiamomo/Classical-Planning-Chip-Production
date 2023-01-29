# Industrial APIs composition via Planning techinques

Implementation a tool to compose Industrial APIs via Planning techniques.

## Preliminaries

...TODO...

## How to run the code

1. Put the descriptions of the industral actors inside [device_descriptions](IndustrialAPIs/actors_api/device_descriptions) folder (refer to [template.json](IndustrialAPIs/actors_api/device_descriptions/template.json)).

2. Inside [IndustrialAPIs](IndustrialAPIs), run the HTTP server that acts as service repository and communication middleware:
```sh
cd IndustrialAPIs
python app.py
```

3. Then, run all the services (inside [IndustrialAPIs](IndustrialAPIs)):
```sh
python launch_devices.py
```

4. Set the goal and the contextual informations of [context.py](context.py). N.B.: some knowledge of automated planning is required.

5. Start the orchestrator:
```sh
python Orchestrator.py
```
