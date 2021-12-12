#!/bin/bash

wget https://github.com/tebe6502/Mad-Assembler/archive/refs/tags/2.1.3.zip
unzip 2.1.3.zip
rm 2.1.3.zip
cd Mad-Assembler-2.1.3/
docker run --rm -it -u $UID -v $(pwd):/source cmplopes/alpine-freepascal fpc -Mdelphi -v mads.pas
chown $(id -u):$(id -g) mads
chmod +x mads
mv mads ../../mads
cd ..
rm Mad-Assembler-2.1.3/ -rf
docker image rm cmplopes/alpine-freepascal:latest
