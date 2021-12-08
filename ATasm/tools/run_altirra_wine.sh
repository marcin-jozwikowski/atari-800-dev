#!/bin/bash

rm ~/.wine/altirra/drive_c/Altirra/out -rf
cp $(pwd)/out ~/.wine/altirra/drive_c/Altirra -fr
path=${@//out\//C:\\Altirra\\out\\}
WINEPREFIX=$HOME/.wine/altirra wine C:\\Altirra\\Altirra.exe $path