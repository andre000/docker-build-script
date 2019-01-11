#!/bin/bash
# Build the docker file to a new tag
docker build . -f wordpress.dockerfile -t a000/wordpress-test
