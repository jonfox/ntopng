FROM ubuntu:16.04
MAINTAINER Jon Fox <jon@fox.name>

RUN groupadd -r ntopng && useradd -r -g ntopng ntopng

ADD http://apt-stable.ntop.org/16.04/all/apt-ntop-stable.deb /apt-ntop-stable.deb

RUN apt-get update && \
    apt-get -qy install lsb-release && \
    dpkg -i /apt-ntop-stable.deb && \
    apt-get update && \
    apt-get -qy install redis-server ntopng && \
    apt-get clean && \
    rm -rf /apt-ntop-stable.deb /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /data && \
    chown ntopng:ntopng /data

EXPOSE 3000

VOLUME /data

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
