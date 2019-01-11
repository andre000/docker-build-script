#!/bin/bash
# Create a Test Network for the container, if doesn't exist
docker network create --driver bridge test_network || true
# Run a Strapi server instance on the default port

case "$1" in
	--no-volume)
		docker run --name strapi -d --net test_network -p 1337:1337 a000/strapi-test
		;;
	*)
        docker run --name strapi -d --net test_network -p 1337:1337 -v `pwd`/.data/strapi:/var/www/html/  a000/strapi-test
		;;
esac