#!/bin/bash -e

docker build . -t local/build-python3.7
docker run --rm -iv${PWD}:/host-volume local/build-python3.7 sh -s <<EOF
cd /opt
zip -r ../python37.zip .
cp -va /python37.zip /host-volume
EOF