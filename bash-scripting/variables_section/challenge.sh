#!/usr/bin/env bash
filenames=$@
# xargs -I $filenames $(. ./activity3.sh ${filenames})

xargs -I $filenames $(date "+%Y-%m-%d_$filenames") 

# filename=$1
# newfilename=$(date "+%Y-%m-%d_$filename")
# cp $filename $newfilename
