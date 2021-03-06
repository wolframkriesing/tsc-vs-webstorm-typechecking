#!/usr/bin/env bash

set -e

DOCKERFILE_HASH=$(md5 -q ./Dockerfile)
CONTAINER_NAME=tscvsws
IMAGE_NAME=${CONTAINER_NAME}:${DOCKERFILE_HASH}

if [[ $(docker inspect --format . ${IMAGE_NAME} 2>&1) != "." ]]; then
  echo "--- BUILDING image '${IMAGE_NAME}'---"
  docker build -t ${IMAGE_NAME} -f Dockerfile .
fi


echo "--- RUNNING container '${CONTAINER_NAME}'---"
docker run --rm -it \
	--name tscvsws-image \
	--volume $(pwd):/home/node/app \
	${IMAGE_NAME} $@