printf "\e[104m\e[91mRunning script for exercise 19...\e[39m\e[49m\n"


printf "\nOne: \n"
printf "\nStarting in your home directory, execute a single command-line command
 to make a directory foo, change into it, create a file bar with content “baz”,
 print out bar’s contents, and then cd back to the directory you came from.
 Hint: Combine the commands as described in Box 12.\n"
mkdir -p ~/Documents/LG_Projects/gratis-caracal/foo ; cd ~/Documents/LG_Projects/gratis-caracal/foo echo "baz" > bar.txt ; cd ~

printf "\nTwo: \n"
printf "\nWhat happens when you run the previous command again? How many of the commands executed? Why?\n"
printf "   All the commands ran successfully but did not create a duplicate bar.txt file\n"

printf "\mThree: \n"
printf "\nExplain why the command rm -rf / is unbelievably dangerous, and why you
 should never type it into a terminal window, not even as a joke.\n"
printf "It will delete all in existence. rm -rf / will recursively force delete every
 file starting from the root directory AKA all files."
 
printf "\mFour: \n"
printf "\nHow can the previous command be made even more dangerous? Hint: Refer to Box 11.
 (This command is so dangerous you shouldn’t even think it, much less type it.)\n"
printf "add sudo to the front of the command to force the command to go through as the super user\n"
