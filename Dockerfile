FROM thingmesh/base:latest
MAINTAINER Lars Boegild Thomsen <lth@bright-things.com>

RUN     export DEBIAN_FRONTEND=noninteractive && \
        apt-get -y update && \
        apt-get install -yq mosquitto mosquitto-clients 

