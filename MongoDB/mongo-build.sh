#!/bin/bash
# Build the docker file to a new tag
sudo docker build . -f ./mongo-server.dockerfile -t a000/mongo-test
