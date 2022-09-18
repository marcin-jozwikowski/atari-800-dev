#!/bin/bash

WINEPREFIX=$HOME/.wine/altirra
ALTIRRAPATH=$WINEPREFIX/drive_c/Altirra

rm -rf $ALTIRRAPATH/out
cp $(pwd)/out $ALTIRRAPATH -fr
path=${@//out\//C:\\Altirra\\out\\}
WINEPREFIX=$WINEPREFIX wine C:\\Altirra\\Altirra.exe $path