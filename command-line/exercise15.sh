echo "Running script for exercise 15..."

printf "\nOne:"
printf "\nThe history command prints the history of commands
in a particular terminal shell
(subject to some limit, which is typically large).
Pipe history to less to examine your command history.
What was your 17th command?\n"
history | head -n 17 | tail -1

printf "\nTwo:"
printf "\nBy piping the output of history to wc, count how many commands you’ve executed so far.\n"
history | wc

printf "\nThree:"
printf "\nOne use of history is to grep your commands to find useful
ones you’ve used before, with each command preceded by the corresponding
number in the command history. By piping the output of history to grep,
determine the number for the last occurrence of curl.\n"
history | grep curl

printf "\nFour:"
printf "\nIn Box 9, we learned about !! (“bang bang”) to execute the previous
command. Similarly, !n executes command number n, so that, e.g., !17 executes
the 17th command in the command history. Use the result from the previous exercise
to re-run the last occurrence of curl.\n"
printf "  '!1387' \n"

printf "\nFive:"
printf "\nWhat do the O and L options in Listing 10 mean? Hint: Pipe the output of
curl -h to  less and search first for the string -O and then for the string -L.\n"
printf "\n'The L is for when a curl request hits a 3xx status code, it will enable curl to
follow the redirection of the server to the new location of the requested resource, while
the O option outputs the response of the request to a file.'"
