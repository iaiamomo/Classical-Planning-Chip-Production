FROM python:3

WORKDIR /home/default

RUN pip install --no-cache-dir -r requirements.txt

RUN git clone --recurive-submodules https://github.com/iaiamomo/IAPIsPLAN.git &&\
    cd IAPIsPLAN &&\
    cd downward &&\
    ./build.py &&\
    cd ../actors_api_plan/open_client_script &&\
    ./generate-openapi-client.sh &&\
    cd ../..

RUN chmod a+x run_apis.sh

CMD ["./run_apis.sh"]
