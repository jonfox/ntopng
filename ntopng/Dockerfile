FROM ubuntu:16.04

USER root

RUN apt-get update && apt-get -qy install lsb-release
ADD http://packages.ntop.org/ubuntu/16.04/all/apt-ntop-stable/apt-ntop-stable.deb /apt-ntop-stable.deb
RUN dpkg -i apt-ntop-stable.deb
RUN rm -rf /apt-ntop-stable.deb

RUN apt-get update
RUN apt-get -qy install ntopng redis-server
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

EXPOSE 3000

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
