FROM ubuntu:18.04
MAINTAINER Lucas Novoa <luca.pinto@itec.ufpa.br>

VOLUME ["/dev/bus/usb"]

ENV USER=root
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install linux-image-$(uname -r) linux-headers-$(uname -r) software-properties-common git wget git build-essential sudo psmisc vim -yq

WORKDIR /exam


