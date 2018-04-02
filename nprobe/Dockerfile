FROM ubuntu:16.04

USER root

ADD http://apt-stable.ntop.org/16.04/all/apt-ntop-stable.deb /apt-ntop-stable.deb

RUN apt-get update && \
    apt-get -qy install lsb-release && \
    dpkg -i /apt-ntop-stable.deb && \
    apt-get update && \
    apt-get -qy install nprobe && \
    apt-get clean && \
    rm -rf /apt-ntop-stable.deb /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 2055

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
