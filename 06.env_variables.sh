#!/bin/bash

echo "Course name is: $COURSE"

#In Linux, everything is treated as a process. For example, when you run commands like ps, a process is created to execute that command.

#If you set an environment variable using:
#     export COURSE="DevOps with AWS"
#The variable COURSE will be available only in the current shell session (process) and its child processes. 
#The variable remains accessible until the shell session is closed or the variable is unset using:

#unset COURSE
#After unsetting it, the variable is removed from the current environment.
