#!/bin/bash -e

docker build . -t local/build-python3.7
docker cp bdf1855838a7:/python37.zip ./python37.zip
