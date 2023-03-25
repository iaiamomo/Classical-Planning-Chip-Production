# Industrial APIs composition via Planning techinques

Implementation a tool to compose Industrial APIs via Planning techniques.

## Use the source code

### Preliminaries

Clone the repository:
```sh
git clone --recursive-submodules https://github.com/username/IAPIsPLAN.git
cd IAPIsPLAN
```

Then, setup the environment (install [miniconda](https://docs.conda.io/projects/conda/en/stable/user-guide/install/index.html#installing-conda-on-a-system-that-has-other-python-installations-or-packages)):
```sh
conda env create -f environment.yml
conda activate py3
```

Finally, build [Fast Downward](https://github.com/aibasel/downward) planner:
```sh
cd downward
./build.py
```


### How to run the code

1. Put the descriptions of the industral actors inside [device_descriptions](https://github.com/iaiamomo/IndustrialAPIs/tree/main/actors_api_plan/device_descriptions) folder (refer to [template](https://github.com/iaiamomo/IndustrialAPIs/blob/main/README.md#industrial-apis)).

2. Generate Python client from OpenAPI v3.0 specification:
```sh
cd actors_api_plan/openapi_client_script
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


## Use the Docker image

### Preliminaries

Build an image from the [Dockerfile](Dockerfile):
```sh
docker build -t orchestrator .
```

Run a new container from the image created:
```sh
docker run -it --network host orchestrator bash
```

Get the ``CONTAINER ID`` of the running container with:
```sh
docker ps
```


### How to run the code

1. Open three terminals in a running container executing three times:
```sh
docker exec -it <CONTAINER_ID> bash
```

2. Then, follow the instructions listed in the previous section.

N.B. Use ``python3`` instead of ``python`` when launching components.