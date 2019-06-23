#!/bin/bash -e

VERSION=7.1.1-beta

rm -rf layer
mkdir -p layer
cp bootstrap.py layer/bootstrap
chmod +x layer/bootstrap
cd layer
curl -OL https://bitbucket.org/squeaky/portable-pypy/downloads/pypy3.6-$VERSION-linux_x86_64-portable.tar.bz2
tar -xvjf pypy3.6-$VERSION-linux_x86_64-portable.tar.bz2
mv pypy3.6-$VERSION-linux_x86_64-portable pypy
rm pypy3.6-$VERSION-linux_x86_64-portable.tar.bz2
zip -r ../pypy36.zip .
