#!/bin/bash
# Create a Test Network for the container, if doesn't exist
docker network create --driver bridge test_network || true
# Run a Wordpress server instance on the 8080 port

case "$1" in
	--no-volume)
		docker run --name wordpress -d --net test_network -p 8080:80 a000/wordpress-test
		;;
	*)
        docker run --name wordpress -d --net test_network -p 8080:80 -v `pwd`/.data/wordpress:/var/www/html/  a000/wordpress-test
		;;
esac