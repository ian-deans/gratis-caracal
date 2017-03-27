#!/usr/bin/env zsh
# filenames=$@
curdate=$(date "+%Y-%m-%d_")
asuh=dood
echo $(date "+%Y-%m-%d_"$asuh)
# xargs -I $filenames $(. ./activity3.sh ${filenames})
# echo $filenames
find . -name "*.txt" -print | xargs -I file mv file $(date "+%Y-%m-%d_"$file)
# filename=$1
# newfilename=$(date "+%Y-%m-%d_$filename")
# cp $filename $newfilename
# how to get the collection
