# Industrial APIs composition via Planning techinques

Implementation a tool to compose Industrial APIs via Planning techniques.

## Preliminaries

- Setup the environment
```sh
conda env create -f environment.yml
conda activate py3
```

- Build [Fast Downward](https://github.com/aibasel/downward) software
```sh
cd downward
./build.py
```


## How to run the code

1. Put the descriptions of the industral actors inside [device_descriptions](https://github.com/iaiamomo/IndustrialAPIs/tree/main/actors_api_plan/device_descriptions) folder (refer to [template.json](IndustrialAPIs/actors_api_plan/device_descriptions/template.json)).

2. Generate Python client from OpenAPI v3.0 specification:
```sh
cd actors_api_plan/open_client_script
./generate-openapi-client.sh
```

3. Inside [IndustrialAPIs](https://github.com/iaiamomo/IndustrialAPIs), run the server representing a middleware exposing HTTP server and a websocket server:
```sh
cd IndustrialAPIs
python app.py
```

4. Then, run the services (inside [IndustrialAPIs](https://github.com/iaiamomo/IndustrialAPIs)):
```sh
cd IndustrialAPIs
python launch_devices.py
```

5. Set the goal and the contextual informations inside [context.py](context.py). N.B.: some knowledge of automated planning is required.

6. Start the orchestrator:
```sh
python orchestrator.py
```
