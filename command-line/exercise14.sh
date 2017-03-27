echo "Command to display line numbers in grep: -n"
echo " "
grep -n rose sonnets.txt

echo " "
echo "Command to get first line with the word rose:"
echo " 'grep rose sonnets.txt | head -n 1' "
echo " "

grep rose sonnets.txt | head -n 1

echo " "
echo "Case sensitve search for Rose"
echo " 'grep Rose sonnets.txt' "
echo " "

echo "Result of grep Rose sonnets.txt | grep -v rose | wc"
echo " "
grep Rose sonnets.txt | grep -v rose | wc
