#!/bin/bash

rm ~/.wine/altirra/drive_c/Altirra/out -rf
cp $(pwd)/out ~/.wine/altirra/drive_c/Altirra -fr
path=${@//out\//C:\\Altirra\\out\\}

if alias altirra 2>/dev/null; then 
  altirra $path
else 
  WINEPREFIX=$HOME/.wine/altirra wine C:\\Altirra\\Altirra.exe $path
fi