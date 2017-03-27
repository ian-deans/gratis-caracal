#!/usr/bin/env bash

day=$( date | cut -d' ' -f 1 )

case $day in
  [Sun]*) echo 'Last day of the weekend yo.';;
  [Mon]*) echo 'Hope you dont have a case of the Mondays';;
  [Tue]*) echo 'Mmmmmm...Taco Tuesday.';;
  [Wed]*) echo 'Hump day, almost there...';;
  [Thu]*) echo 'Thirsty Thursday?';;
  [Fri]*) echo 'TGIF!!';;
  [Sat]*) echo 'The weekend, IT HAS BEGUN! *queue mortal kombat theme song*';;
esac
