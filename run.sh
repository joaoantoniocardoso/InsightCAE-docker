#!/bin/sh

docker run \
    --name="my_insightcae" \
    --net=host \
    --env="DISPLAY=unix:0.0" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" --privileged \
    --volume="/home/$(whoami)/.Xauthority:/root/.Xauthority:rw" \
    --volume="${PWD}/root_persistant:/root/" \
    -it \
    insightcae:latest

#docker rm my_insightcae

