# Industrial API composition via Planning techinques - Chip Supply Chain case study

Implementation a tool to compose Industrial API via planning techniques.

## How to replicate the experiments

### Preliminaries

Clone the repository, the Industrial API platform and [Fast Downward](https://github.com/aibasel/downward) planner:
```sh
git clone https://github.com/iaiamomo/AIDA_PlanningCONT.git
cd AIDA_PlanningCONT
git clone https://github.com/iaiamomo/IndustrialAPI.git
git clone https://github.com/aibasel/downward.git
```

Then, setup the environment (install [miniconda](https://docs.conda.io/projects/conda/en/stable/user-guide/install/index.html#installing-conda-on-a-system-that-has-other-python-installations-or-packages)):
```sh
conda env create -f environment.yml
conda activate py3
```

Finally, build Fast Downward:
```sh
cd downward
./build.py
```


### Run the Orchestrator

- The configuration file [conf.json](https://github.com/iaiamomo/IndustrialAPI/tree/main/conf.json) contains the basic information needed to run the platform. The JSON key <code>mode</code> accept only the value <code>plan</code>, the key <code>phase</code> accepts <code>[1,2]</code> values (representing the assortment and manufacturing phases respectively), and the key <code>size</code> accepts <code>[small, manageable1, manageable2, complex]</code> values (related to the number of involved services).
- [actors_api_plan](https://github.com/iaiamomo/IndustrialAPI/tree/main/actors_api_plan) contains the description of the manufacturing actors.
- [context.py](context.py) contains the contextual information.

1. Generate Python client from OpenAPI v3.0 specification:
```sh
cd IndustrialAPI/actors_api_plan/openapi_client_script
./generate-openapi-client.sh
```

2. Run the Industrial API server:
```sh
cd IndustrialAPI
python app.py
```

3. Then, run the Industrial API:
```sh
cd IndustrialAPIs
python launch_devices.py
```

4. Start the controller:
```sh
python controller.py
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