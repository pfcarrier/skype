#!/bin/bash
#

## Insure execution occur within base directory of this script
#
SCRIPT_PATH=$(dirname $(readlink -f $0))
DOCKER_NAME=$(basename $SCRIPT_PATH)
cd $SCRIPT_PATH

DOCKER_HOST_IP=$(/sbin/ifconfig eth0 | awk -F ' *|:' '/inet addr/{print $4}')

docker stop $DOCKER_NAME 2>/dev/null
docker rm -f $DOCKER_NAME 2>/dev/null

xhost +
docker run -v /tmp/.X11-unix:/tmp/.X11-unix -e DISPLAY=unix$DISPLAY -h $DOCKER_NAME -d --name $DOCKER_NAME $DOCKER_NAME:latest
