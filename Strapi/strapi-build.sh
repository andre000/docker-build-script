#!/bin/bash
# Build the docker file to a new tag
sudo docker build . -f strapi.dockerfile -t a000/strapi-test
