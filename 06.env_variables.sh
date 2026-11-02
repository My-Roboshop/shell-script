#!/bin/bash

echo "Course name is: $COURSE"

#In Linux, everything is treated as a process. For example, when you run commands like ps, a process is created to execute that command.

#If you set an environment variable using:
#     export COURSE="DevOps with AWS"
#The variable COURSE will be available only in the current shell session (process) and its child processes. 
#The variable remains accessible until the shell session is closed or the variable is unset using:
# This variable is valid until the process is alive, it is accessable to sub process also.
#unset COURSE
#After unsetting it, the variable is removed from the current environment.
# if we want to have this variable permanently
# goto cd --> vi .bashrc --> bottom give before unset rc --> expose COURSE="DevOps with AWS" --> now even sessiond ended, process will be alive
# to effect give source .bashrc
