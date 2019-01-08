#!/bin/bash
# Create a Test Network for the container, if doesn't exist
sudo docker network create --driver bridge test_network || true
# Run a MongoDB server instance on the default port
sudo docker run -d --name mongo --net test_network -p 27017:27017 a000/mongo-test 
