#!/bin/bash

VERSION=2.1.5
IMAGE=freepascal/fpc:latest-slim
wget https://github.com/tebe6502/Mad-Assembler/archive/refs/tags/$VERSION.zip
unzip $VERSION.zip
rm $VERSION.zip
cd Mad-Assembler-$VERSION/
docker run --rm --user "$(id -u)":"$(id -g)" -v "$PWD":/usr/src/myapp -w /usr/src/myapp $IMAGE fpc -Mdelphi -v mads.pas
chmod +x mads
mv mads ../mads
mv mads.exe ../mads.exe
cd ..
rm Mad-Assembler-$VERSION/ -rf
docker image rm $IMAGE
