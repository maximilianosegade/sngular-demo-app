#!/bin/sh
DOCKER_IMAGE=demo-rest-app
DOCKER_TAG=$1

if [ -z "${DOCKER_TAG}" ]; then
  echo "usage: ./build.sh <docker_tag>"
  exit 1;
fi

docker build --tag=${DOCKER_IMAGE}:${DOCKER_TAG} .