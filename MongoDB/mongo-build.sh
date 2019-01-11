#!/bin/bash
# Build the docker file to a new tag
docker build . -f ./mongo-server.dockerfile -t a000/mongo-test
