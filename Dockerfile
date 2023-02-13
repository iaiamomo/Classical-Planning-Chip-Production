FROM python:3

WORKDIR /home/default

RUN git clone https://username:password@github.com/iaiamomo/IAPIsPLAN.git &&\
    cd IAPIsPLAN

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

RUN git clone https://github.com/aibasel/downward.git &&\
    git clone https://github.com/iaiamomo/IndustrialAPIs.git &&\
    cd downward &&\
    ./build.py &&\
    cd ../actors_api_plan/open_client_script &&\
    ./generate-openapi-client.sh &&\
    cd ../..

RUN chmod a+x run_apis.sh

CMD ["./run_apis.sh"]
