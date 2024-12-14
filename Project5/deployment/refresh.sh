#!/bin/bash

# stop & remove?? the old
docker stop birdsite
# need to know the name of the running contatiner process

# ToDo: we need to remove the name of the running container process
docker rm birdsite

# pull new version on latest
docker pull braaksmao/braaksma-ceg3120:latest

# Run from new latest (give it a static name)
docker run -d --name birdsite --rm -p 80:4200 braaksmao/braaksma-ceg3120:latest                