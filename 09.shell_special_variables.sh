#!/bin/bash

echo "All variables passed to the script: $@"
echo "All variables passed to the script: $*"
echo "To get the number of argument count given while running script is: $#"
echo "Script name is: $0"
echo "Curent directory is $PWD"
echo "User running the script is $USER"
echo "Home Directory of the user who is running is $HOME"
echo "Process ID(PID) of this script is: $$"
sleep 50 &
echo "PID of the last command in background is: $!"    # Here we will get sleep process ID


# $@ and $* is used to get all arguments
# $0 is to get the script name
# & at the end tells the shell to run this command in the background.
