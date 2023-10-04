# Industrial API composition via Planning techinques - Chip Supply Chain case study

Implementation a tool to compose Industrial API via planning techniques.

## How to replicate the experiments
The experiments can be replicated either by using docker or run it from source code.

### Use the Docker image

#### Preliminaries

Build the image from the [Dockerfile](Dockerfile):
```sh
docker build -t controller .
```

Run a new container from the image created:
```sh
docker run -it --network host controller bash
```

Get the ``CONTAINER ID`` of the running container with:
```sh
docker ps
```

#### Run the Orchestrator

1. Open **3** terminals in a running container executing three times:
```sh
docker exec -it <CONTAINER_ID> bash
```

2. Then, run the Industrial API server, launch the manufacturing actor services and start the controller.
```sh
# 1° term: Industrial API server
cd Classical-Planning-Chip-Production/IndustrialAPI
python app.py
# 2° term: manufacturing services
cd Classical-Planning-Chip-Production/IndustrialAPI
python launch_devices.py
# 3° term: controller
cd Classical-Planning-Chip-Production
python controller.py    
```

3. To shut-down the services please press ``Ctrl + C`` in the 1° terminal.



### From the source code

#### Preliminaries

Clone the repository, the Industrial API platform and [Fast Downward](https://github.com/aibasel/downward) planner:
```sh
git clone https://github.com/iaiamomo/Classical-Planning-Chip-Production.git
cd Classical-Planning-Chip-Production
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

#### Run the Orchestrator

- The configuration file [conf.json](https://github.com/iaiamomo/IndustrialAPI/tree/main/conf.json) contains the basic information needed to run the platform. The JSON key ``mode`` accept only the value ``plan``, the key ``phase`` accepts ``[1,2]`` values (representing the assortment and manufacturing phases respectively), and the key ``size`` accepts ``[small, manageable1, manageable2, complex]`` values (related to the number of involved services).
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

3. Then, run the manufacturing actor services:
```sh
cd IndustrialAPIs
python launch_devices.py
```

4. Start the controller:
```sh
python controller.py
```
