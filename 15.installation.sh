#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run the user with root previlizes"
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR:: MySQL is failure"
else
    echo "MySQL is successful"
fi    


