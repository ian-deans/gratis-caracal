if [[ $# == 2 ]]; then
  rand=$(($RANDOM % ($2 - $1 + 1) + $1))
  echo $rand
elif [[ $# == 1 ]]; then
  rand=$(($RANDOM % ($1+1)))
  echo $rand
else
  rand=$(($RANDOM % 101))
  echo $rand
fi
