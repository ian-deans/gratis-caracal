printf "\e[104m\e[91mRunning script for exercise 18...\e[39m\e[49m\n"

printf "\nOne: \n"
printf "\nMake a directory foo with a subdirectory bar, then rename the subdirectory to baz.\n"
mkdir -p foo/bar
mv foo/bar foo/baz
printf "\nTwo: \n"
printf "Copy all the files in text_files, with directory, into foo."
cp -r second_directory/text_files foo/baz
printf "\nThree: \n"
printf "Copy all the files in text_files, without directory, into bar."
cp -r second_directory/text_files/ foo
printf "\nFour: \n"
printf "Remove foo and everything in it using a single command."
rm -rf foo
