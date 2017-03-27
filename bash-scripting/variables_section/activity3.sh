filename=$1
newfilename=$(date "+%Y-%m-%d_$filename")
cp $filename $newfilename
ls
