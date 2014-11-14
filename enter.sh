#!/bin/bash
#

## Insure execution occur within base directory of this script
#
SCRIPT_PATH=$(dirname $(readlink -f $0))
DOCKER_NAME=$(basename $SCRIPT_PATH)
cd $SCRIPT_PATH

sudo docker-enter $DOCKER_NAME
