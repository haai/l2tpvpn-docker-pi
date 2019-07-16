FROM balenalib/raspberrypi3-debian@sha256:3167926f5dee6a1e3ed9e554341a5d9417bc471ea861d5cf7b986fccc07c1fc7
LABEL maintainer="haai <docker@haailand.de>"

WORKDIR /opt/src

ENV MYIP $MYIP
ENV MYGATEWAY $MYGATEWAY
ENV MYUSERNAME $MYUSERNAME
ENV MYSECRET $MYSECRET
ENV MYPASSWORD $MYPASSWORD

ENV DEBIAN_FRONTEND noninteractive

RUN sudo apt-get -y update \
    && apt-get install -y iptables libreswan wget xl2tpd ppp lsof vim \
    && rm -rf /var/lib/apt/lists/*

COPY ./run.sh /opt/src/run.sh
RUN chmod 755 /opt/src/run.sh

EXPOSE 500/udp 4500/udp

VOLUME ["/lib/modules"]

CMD ["/opt/src/run.sh"]
