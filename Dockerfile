FROM thingmesh/base:latest
MAINTAINER Lars Boegild Thomsen <lth@bright-things.com>

RUN     curl https://packagecloud.io/install/repositories/erlio/vernemq/script.deb.sh | bash

RUN     export DEBIAN_FRONTEND=noninteractive && \
        apt-get -y update && \
        apt-get install -yq mosquitto-clients vernemq

COPY    run.sh /
COPY	vernemq.conf.default vmq.passwd.default vmq.acl.default /tmp/

RUN	chmod +x /run.sh

VOLUME	/etc/vernemq
VOLUME	/var/lib/vernemq

EXPOSE  1883
EXPOSE  4369
EXPOSE  18000-18999

ENTRYPOINT	["/bin/bash", "-c", "./run.sh"]

