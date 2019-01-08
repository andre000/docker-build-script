#!/bin/bash
# Create a Test Network for the container, if doesn't exist
sudo docker network create --driver bridge test_network || true
# Run a MongoDB server instance on the default port

case "$1" in
	--no-volume)
		sudo docker run -d --name mongo --net test_network -p 27017:27017 a000/mongo-test
		;;
	*)
		sudo docker run -d --name mongo --net test_network -p 27017:27017 -v /data/db:/data/db a000/mongo-test
		;;
esac