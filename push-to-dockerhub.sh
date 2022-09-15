#!/bin/bash

# build docker image from Dockerfile
docker build -t goapp .

# push image to dockerhub
docker tag goapp:latest $DOCKERHUB_USER_NAME/goapp:latest
docker push $DOCKERHUB_USER_NAME/goapp:latest
