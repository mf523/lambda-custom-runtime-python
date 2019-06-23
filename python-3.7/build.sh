#!/bin/bash -e

docker build . -t local/build-python3.7
docker run --rm -iv${PWD}:/host-volume local/build-python3.7 sh -s <<EOF
cd /opt
zip -r /build/python.zip .
cp -va /build/python.zip /host-volume
cd /build/python_libs
zip -r /build/python_libs.zip .
cp -va /build/python_libs.zip /host-volume

EOF
