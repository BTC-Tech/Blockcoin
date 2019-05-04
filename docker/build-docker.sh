#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR/..

DOCKER_IMAGE=${DOCKER_IMAGE:-blockcoinpay/blockcoind-develop}
DOCKER_TAG=${DOCKER_TAG:-latest}

BUILD_DIR=${BUILD_DIR:-.}

rm docker/bin/*
mkdir docker/bin
cp $BUILD_DIR/src/blockcoind docker/bin/
cp $BUILD_DIR/src/blockcoin-cli docker/bin/
cp $BUILD_DIR/src/blockcoin-tx docker/bin/
strip docker/bin/blockcoind
strip docker/bin/blockcoin-cli
strip docker/bin/blockcoin-tx

docker build --pull -t $DOCKER_IMAGE:$DOCKER_TAG -f docker/Dockerfile docker
