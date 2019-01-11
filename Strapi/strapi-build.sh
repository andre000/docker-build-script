#!/bin/bash
# Build the docker file to a new tag
docker build . -f strapi.dockerfile -t a000/strapi-test
