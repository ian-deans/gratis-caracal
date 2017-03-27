- echo <string>	    Print string to screen	$ echo hello
- man <command>	    Display manual page for command	$ man echo
- ⌃C	              Get out of trouble	$ tail^C
- ⌃A	              Move to beginning of line
- ⌃E	              Move to end of line
- ⌃U	              Delete to beginning of line
- Option-click	    Move cursor to location clicked
- Up & down arrow	  Scroll through previous commands
- clear or ⌃L	      Clear screen	$ clear
- exit or ⌃D	      Exit terminal	$ exit



- \>>                 Redirect output to filename	$ echo foo > foo.txt
- \>>>	              Append output to filename	$ echo bar >> foo.txt
- cat                 <file>	Print contents of file to screen	$ cat hello.txt
- diff                <f1> <f2>	Diff files 1 & 2	$ diff foo.txt bar.txt
- ls                	List directory or file	$ ls hello.txt
- ls -l	              List long form	$ ls -l hello.txt
- ls -rtl	            Long by reverse modification time	$ ls -rtl
- ls -a	              List all (including hidden)	$ ls -a
- touch <file>	      Create an empty file	$ touch foo
- mv <old> <new>	    Rename (move) from old to new	$ mv foo bar
- cp <old> <new>	    Copy old to new	$ cp foo bar
- rm <file>	          Remove (delete) file	$ rm foo
- rm -f <file>	      Force-remove file	$ rm -f bar

- up & down arrow keys	Move up or down one line
- spacebar	            Move forward one page
- ⌃F	                  Move forward one page
- ⌃B	                  Move back one page
- G	                    Move to end of file
- 1G	                  Move to beginning of file
- /<string>	            Search file for string	/rose
- n	                    Move to next search result
- N	                    Move to previous search result
- q	                    Quit less



- $0                    The name of the Bash script.
- $1                    $9 - The first 9 arguments to the Bash script. (As mentioned above.)
- $#                    How many arguments were passed to the Bash script.
- $@                    All the arguments supplied to the Bash script.
- $?                    The exit status of the most recently run process.
- $$                    The process ID of the current script.
- $USER                 The username of the user running the script.
- $HOSTNAME             The hostname of the machine the script is running on.
- $SECONDS              The number of seconds since the script was started.
- $RANDOM               Returns a different random number each time is it referred to.
- $LINENO               Returns the current line number in the Bash script.

- env                   Displays all variables in your shell.
