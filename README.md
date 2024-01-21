# Industrial API composition via Planning techinques - Chip Supply Chain case study

Implementation a tool to compose the [Industrial API](https://github.com/iaiamomo/IndustrialAPI) of the manufacturing actors via planning techniques.

Results of the experiments can be found in [experimental_results](experimental_results).

## How to replicate the experiments
The experiments can be replicated either by using docker or run it from source code. Befor starting the controller, you may need to set up the configuration file.

#### Configuration file
- The configuration file [conf.json](https://github.com/iaiamomo/IndustrialAPI/tree/main/conf.json) contains the basic information needed to run the platform.
    ```json
    {
        "mode": "plan",
        "phase": 0,
        "version": "v4",
        "size": "large"
    }
    ```
    The JSON key <code>mode</code> accept the value <code>plan</code>, the key <code>phase</code> accepts the value <code>0</code> (representing the chip chain manufacturing case study), and the key <code>size</code> accepts <code>[small, medium, large]</code> values (related to the number of involved services).
- [descriptions_phase](https://github.com/iaiamomo/IndustrialAPI/tree/main/actors_api_plan/descriptions_phase0_v4) contains the description of the manufacturing actors.
- [context.py](context.py) contains some contextual information.


### Use the Docker image

#### Preliminaries

- Build the controller image with the [Dockerfile](Dockerfile)
    ```sh
    docker build -t controller .
    ```

- Run a container:
    ```sh
    docker run -it --network host controller bash
    ```

- Get the ``CONTAINER ID``:
    ```sh
    docker ps
    ```

#### Run the Controller

1. Open **3** terminals with:
    ```sh
    docker exec -it <CONTAINER_ID> bash
    ```

2. Then, run the Industrial API server, launch the manufacturing actor services and start the controller.
    ```sh
    # 1° terminal: Industrial API server
    cd Classical-Planning-Chip-Production/IndustrialAPI
    python3 app.py
    # 2° terminal: manufacturing services
    cd Classical-Planning-Chip-Production/IndustrialAPI
    python3 launch_devices.py
    # 3° terminal: controller
    cd Classical-Planning-Chip-Production
    python3 controller.py    
    ```

3. To shut-down the services please press ``Ctrl + C`` in the 1° terminal.



### From the source code

#### Preliminaries

- Clone the repository, the [Industrial API platform](https://github.com/iaiamomo/IndustrialAPI) and [Fast Downward](https://github.com/aibasel/downward) planner:
    ```sh
    git clone https://github.com/iaiamomo/Classical-Planning-Chip-Production.git
    cd Classical-Planning-Chip-Production
    git clone https://github.com/iaiamomo/IndustrialAPI.git
    git clone https://github.com/aibasel/downward.git
    ```

- Then, setup the environment (install [miniconda](https://docs.conda.io/projects/conda/en/stable/user-guide/install/index.html#installing-conda-on-a-system-that-has-other-python-installations-or-packages)):
    ```sh
    conda env create -f environment.yml
    conda activate py3
    ```

- Finally, build Fast Downward:
    ```sh
    cd downward
    ./build.py
    ```

#### Run the Controller

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
