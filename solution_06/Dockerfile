FROM ubuntu:18.04
MAINTAINER Lucas Nóvoa <lucas.pinto@itec.ufpa.br>

VOLUME ["/dev/bus/usb"]
VOLUME ["/config_files"]

ENV USER=root
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install  git wget git build-essential sudo psmisc vim -yq

RUN apt-get install -y python python-pip && python -m pip install -U pip && pip install pyyaml

RUN /bin/bash -c "pip install python-docx" 

WORKDIR /exam

COPY main.py ./main.py
COPY config.yaml ./config.yaml



