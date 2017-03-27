#!/bin/bash

# *****************************************************************************
# *                                                                           *
# *                     Bash Loops Activiy Section                            *
# *                             Activiy One                                   *
# *                                                                           *
# *****************************************************************************


print_ten () {
  for value in {1..10}; do

    if [[ $(( $value % 2 )) == 1 ]]; then
      echo $value is odd
    else
      echo $value ie even
    fi

  done

  echo
  echo Done.
}

# *****************************************************************************
# *                                                                           *
# *                     Bash Loops Activiy Section                            *
# *                             Activiy Two                                   *
# *                                                                           *
# *****************************************************************************

do_stuff () {
  dir=$1
  if [ -d $dir ]; then
    for FILE in $( ls -1 $dir )
    do
      if [ -d $dir/$FILE ]; then
        printf "\n$FILE\e[32m is a directory containing:
        $( ls $dir/$FILE | wc -l ) files.\e[39m\n"
      else
        printf "\n$FILE\e[32m is a file with a size of:
        $( stat -f%z $dir/$FILE ) bytes\e[39m\n"
      fi
    done
  else
    printf "\n\e[69mMust provide a directory.\e[39m\n"
  fi
}


export print_ten do_stuff
