#!/usr/bin/env bash
# *************************************************************
# *                                                           *
# *       Exercise Two of the Bash Scripting Activites        *
# *                       User Input                          *
# *                                                           *
# *************************************************************

if [ -s /dev/stdin ]; then
  printf "\n\e[32mFound some piped data! Here is the 3rd line:\e[39m\n";
  cat /dev/stdin | cut -f 1 | head -n 3 | tail -n 1;

else
  printf "\n\e[36mSeems there were some arguments passed, $# to be exact.
  Check it out, here are the arguments supplied to this script:\e[39m\n"
  echo $@

  if [ $1 == "convert-meta" ]; then
    printf "\n\e[36mNot your arguments? Weird, the system is sneaking in that context
    crap again huh?\e[39m\n"
  fi
  printf "\n\n\e[32mPlease list 3 things you love.  \e[39m"
  read thing1 thing2 thing3

  printf "\n\e[32mSo...You love $thing1, $thing2, and $thing3? Me too!\e[39m\n"
fi
