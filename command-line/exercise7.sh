echo "From fairest creatures we desire increase," > line_1.txt
echo "That thereby beauty's Rose might never die" > line_2.txt
echo "From fairest creatures we desire increase, \n That thereby beauty's Rose might never die" > sonnet_1_copy.txt
cat line_1.txt line_2.txt > sonnet_1.txt
diff sonnet_1.txt sonnet_1_copy.txt
cat line_2.txt line_1.txt > sonnet_1_reversed.txt
