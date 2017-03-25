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
    fi
    let counter++
  done
  echo
  echo ${MASTERCODE[*]}
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
    if [ $m_color == $u_color ]; then
      let BM++
      let counter++
    elif $(color_in_master $u_color); then
      let WW++
      let counter++
    else
      let NM++
      let counter++
    fi
  done
}

make_master_code
select_player_color
check_code

echo MASTER ${MASTERCODE[*]}
echo USER ${USERCODE[*]}

echo BM $BM WM $WM NM $NM
exec bash
