printf "\e[104m\e[91mRunning script for exercise 17...\e[39m\e[49m\n"

printf "\n\e[32m One: \e[39m\n"
printf "How do the effects of cd and cd ~ differ (or do they)?\n"
printf " \e[36m 'cd is the command for changing directories and defaults to the home
  directory when no argument supplied. The ~ the shortkey for the system variable HOME,
  and it is the argument supplied to the command.'\n\e[39m"

printf "\n\e[32m Two: \e[39m\n"
printf "Change to text_files, then change to second_directory using the “one directory up” double dot operator ...\n"
printf "\e[36m  Creating directory second_directory/text_files and changing to it...\n\n\e[39m "
mkdir -p second_directory/text_files && cd second_directory/text_files
ls -al
pwd
printf "\n\e[36m  Using the cd .. command to back out to second_directory...\n\n\e[39m "
cd ..
ls -al
pwd

printf "\n\e[32m Three: \e[39m\n"
printf "From wherever you are, create an empty file called nil in text_files using whatever method you wish.\n"
printf "\e[36m  creating file nil using touch text_files/nil... \n"
touch text_files/nil
printf "\e[36m  Looking in ${PWD}/text_files...\n\n\e[39m"
ls -al text_files

printf "\n\e[32m Four: \e[39m\n"
printf "Remove nil from the previous exercise using a different path from the one you used before. (In other words,
if you used the path ~/text_files before, use something like ../text_files or /Users/<username>/text_files.)\n"

printf "\e[36m  Deleting nil using find ./ -type f -name nil -ls -delete...\e[39m\n\n "
find ./ -type f -name nil -ls -delete

ls -al text_files/

cd ..
