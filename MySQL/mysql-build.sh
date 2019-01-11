#!/bin/bash
# Build the docker file to a new tag
docker build . -f ./mysql.dockerfile -t a000/mysql-test
