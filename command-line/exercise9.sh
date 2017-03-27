#TODO print some lines to the console.

echo "hello, world" > foo.txt
cp foo.txt bar.txt
diff foo.txt bar.txt
cat foo.txt > baz.txt
cat foo.txt bar.txt > quux.txt


args=$@
xargs -I $args cp $args {date+}
