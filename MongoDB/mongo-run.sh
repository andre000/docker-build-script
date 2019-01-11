#!/bin/bash
# Create a Test Network for the container, if doesn't exist
docker network create --driver bridge test_network || true
# Run a MongoDB server instance on the default port

case "$1" in
	--no-volume)
		docker run -d --name mongo --net test_network -p 27017:27017 a000/mongo-test
		;;
	*)
		docker run -d --name mongo --net test_network -p 27017:27017 -v /data/mongodb:/data/db a000/mongo-test
		;;
esac