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
        nano \
        vim \
        wget &&\
    apt-get clean &&\
    rm -rf /var/cache

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /home/default/experiments

RUN git clone https://github.com/iaiamomo/Classical-Planning-Chip-Production.git &&\
    cd /home/default/experiments/Classical-Planning-Chip-Production &&\
    git clone https://github.com/iaiamomo/IndustrialAPI.git &&\
    git clone https://github.com/aibasel/downward.git

RUN cd /home/default/experiments/Classical-Planning-Chip-Production/downward &&\
    ./build.py &&\
    cd /home/default/experiments/Classical-Planning-Chip-Production/IndustrialAPI/actors_api_plan/openapi_client_script &&\
    chmod +x generate-openapi-client.sh &&\
    ./generate-openapi-client.sh &&\
    cd /home/default/experiments &&\
    mkdir -p /home/default/experiments/results

EXPOSE 8080 8765