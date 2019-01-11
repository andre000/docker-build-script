#!/bin/bash
# Create a Test Network for the container, if doesn't exist
docker network create --driver bridge test_network || true
# Run a Strapi server instance on the default port
docker run --name strapi --net test_network -p 1337:1337 a000/strapi-test
