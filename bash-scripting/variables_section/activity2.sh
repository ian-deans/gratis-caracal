length=$(($1-1))
echo $length
if [[ $length ]]; then
  result=$(head -n $RANDOM /usr/share/dict/words | grep -o -w -E "\b\w[A-Za-z0-9]{${length}}\b" | tail -1)
else
  result=$(head -n $RANDOM /usr/share/dict/words | tail -1)
fi

echo $result
export result
# ./output.sh
