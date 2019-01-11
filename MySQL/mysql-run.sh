#!/bin/bash
# Create a Test Network for the container, if doesn't exist
docker network create --driver bridge test_network || true
# Run a MySQL server instance on the default port

case "$1" in
	--no-volume)
		docker run -d --name mysql --net test_network -p 3306:3306 a000/mysql-test
		;;
	*)
		docker run -d --name mysql --net test_network -p 3306:3306 -v `pwd`/.data/mysql:/var/lib/mysql/ a000/mysql-test
		;;
esac