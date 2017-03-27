#!/bin/bash

# *****************************************************************************
# *                                                                           *
# *                                                                           *
# *                           Mastermind Game                                 *
# *                                                                           *
# *                                                                           *
# *****************************************************************************

COLORS=( R P O Y G I B V )
BM=0
WM=0
NM=0

declare -a MASTERCODE
declare -a USERCODE

color_in_master () {
  local m_color=$1
  for marble in ${MASTERCODE[@]}; do
    if [ ${m_color} == ${marble} ]; then
      return 0
    fi
  done
  return 1
}

get_random_color () {
  local index=$(( $RANDOM % 7 ))
  color=${COLORS[$index]}
}

make_master_code () {
  local counter=0
  until [ $counter -gt 5 ]; do
    get_random_color
    if [ $counter == 0 ]; then
      MASTERCODE[$counter]=${color}
      let counter++
    else
      while color_in_master $color; do
        get_random_color
      done
      MASTERCODE[$counter]=${color}
      let counter++
    fi
  done
  echo
}

select_player_color () {
  counter=0
  until [ $counter -gt 4 ]; do
    PS3='Select a Color: '
    select color in ${COLORS[@]}; do
      USERCODE[$counter]=$color
      break;
    done
    let counter++
  done
}


check_code () {
  local counter=0
  until [ $counter -gt 4 ]; do
    local u_color=${USERCODE[$counter]}
    local m_color=${MASTERCODE[$counter]}

    if [ "$m_color" == "$u_color" ]; then
      let BM++
      let counter++
    elif color_in_master $u_color; then
      let WM++
      let counter++
    else
      let NM++
      let counter++
    fi
    unset u_color m_color
  done
}

printf "\n\e[36mWelcome to the game MASTERMIND. In this game there is a MASTERCODE
which is a combination of 5 random colors and you must crack the code. A black marble denotes
you picked a correct color and placed it in the correct spot. A white marble means you selected a
correct color but it is in the wrong spot in the code. You get 7 attempts to crack the code!\e[39m\n\n"

make_master_code
ATTEMPTS=0

until [ $ATTEMPTS -gt 6 ]; do
  select_player_color
  check_code
  echo BlackMarbles: [$BM] WhiteMarbles: [$WM] Missed: [$NM]
  sleep

  if [ $BM == 5 ]; then
    printf "\e[32m\n Correct! Great job!\e[39m\n"
    break;
  else
    BM=0
    WM=0
    NM=0
    let ATTEMPTS++
  fi
done

exec bash
