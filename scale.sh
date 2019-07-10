#!/bin/bash

rm -rf 256x256 48x48 32x32 24x24 16x16

sizes=(256 48 32 24 16)

for size in "${sizes[@]}"; do
  echo "resizing $size"
  
  cd src
  
  transimg -o resize -w $size -h $size -e ''
  mv processed ../"$size"x"$size"
  
  cd ..
done
