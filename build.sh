#!/bin/bash

docker build -t cbc-lambda-layer .
docker run --rm cbc-lambda-layer cat /tmp/cbc.zip > ./layer.zip
