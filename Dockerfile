FROM ubuntu:22.04

ENV DEBIAN_FRONTEND noninteractive
ENV LC_ALL C.UTF-8
ENV LANG C.UTF-8

WORKDIR /home/default

RUN apt-get update &&\
    apt-get install -y \
        python3 \
        python3-pip \
        git \
        cmake \
        lsof \
        sudo \
        less \
        wget &&\
    apt-get clean &&\
    rm -rf /var/cache

RUN git clone https://username:password@github.com/iaiamomo/IAPIsPLAN.git &&\
    cd /home/default/IAPIsPLAN

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY . .

RUN rm -rf /home/default/IAPIsPLAN/downward &&\
    rm -rf /home/default/IAPIsPLAN/IndustrialAPIs &&\
    cd /home/default/IAPIsPLAN &&\
    git clone https://github.com/aibasel/downward.git &&\
    git clone https://github.com/iaiamomo/IndustrialAPIs.git &&\
    cd /home/default/IAPIsPLAN/downward &&\
    ./build.py &&\
    cd /home/default/IAPIsPLAN/IndustrialAPIs/actors_api_plan/openapi_client_script &&\
    ./generate-openapi-client.sh &&\
    cd /home/default/IAPIsPLAN

EXPOSE 8080 8765