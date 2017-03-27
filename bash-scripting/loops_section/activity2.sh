#!/usr/bin/env bash

# *****************************************************************************
# *                                                                           *
# *                     Bash Loops Activiy Section                            *
# *                             Activiy Two                                   *
# *                                                                           *
# *****************************************************************************

if [ -d $1 ]; then
  for FILE in $( ls -1 $1 )
  do
    if [ -d $1/$FILE ]; then
      printf "\n$FILE\e[32m is a directory containing:
       $( ls $1/$FILE | wc -l ) files.\e[39m\n"
    else
      printf "\n$FILE\e[32m is a file with a size of:
       $( stat -f%z $1/$FILE ) bytes\e[39m\n"
    fi
  done
else
  printf "\n\e[69mMust provide a directory.\e[39m\n"
fi
