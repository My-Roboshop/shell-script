#!/bin/bash

PERSON1=$1
PERSON2=$2

echo "$PERSON1:: Hi $PERSON2, How are you"?
echo "$PERSON2:: Hello $PERSON1, I am fine. How are you?"
echo "$PERSON1:: What are you learning recently"
echo "$PERSON2:: I am learning Shell Script $PERSON1"

# In cmd, we execute the shell script as sh 04.conversation2_using_variables_with_arguments.sh Ramesh Suresh  ,where $1 is considered as Ramesh and $2 is considered as Suresh.