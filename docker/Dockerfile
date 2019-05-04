FROM debian:stretch
LABEL maintainer="Blockcoin Developers <dev@blockcoin.org>"
LABEL description="Dockerised BlockcoinCore, built from Travis"

RUN apt-get update && apt-get -y upgrade && apt-get clean && rm -fr /var/cache/apt/*

COPY bin/* /usr/bin/
