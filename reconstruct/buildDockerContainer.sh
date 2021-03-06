#!/bin/bash

# To build the base image yourself: docker build -f Dockerfile.base  -t xmar/recontruct_tiled_mpv360_mmsys18:base .
if (docker images | grep "xmar/recontruct_tiled_mpv360_mmsys18") > /dev/null ; then
    echo "'xmar/recontruct_tiled_mpv360_mmsys18' already pulled"
else
    docker pull xmar/recontruct_tiled_mpv360_mmsys18:base
fi
docker build --build-arg DOCKER_GROUP_ID=`getent group docker | cut -d: -f3` -t xmar/recontruct_tiled_mpv360_mmsys18 .
