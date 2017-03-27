#!/usr/bin/env bash

if [ -s /dev/stdin ]; then
  echo Filtering the piped data
  echo

  cat /dev/stdin | awk '{print $3 " --> " $7 " : " $8 " -> " $9}'
  printf "\n\e[32mDone.\e[39m\n"
else
  printf "\n\e[91mThis script must be piped to.\e[39m\n"
fi
