#!/bin/bash

sizes=(256 128 64 48 32 24 16)

# clean
for size in "${sizes[@]}"; do
  rm -rf "$size"x"$size"
done

# render
for size in "${sizes[@]}"; do
  echo "resizing $size"
  
  cd src
  
  transimg -o resize -w $size -h $size -e ''
  mv processed ../"$size"x"$size"
  
  cd ..
done
