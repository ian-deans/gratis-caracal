#!/usr/bin/env bash

file=$(find . -name $1 -print)

if [ -w $file ]; then
  echo $file is writable
elif [ -x $file ]; then
  echo $file is executable
else
  echo $file sucks
fi
