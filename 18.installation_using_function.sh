#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run the user with root previlizes"
    exit 1 # Failure is other than 0
fi

VALIDATE () { # Functions receive inputs through args just like shell script args
if [ $1 -ne 0 ]; then
    echo "ERROR:: Installing $2 is failure"
    exit 1
else
    echo "Installing $2 is successful"
fi
}

dnf install mysql -y
VALIDATE $? "MYSQL"

dnf install nginx -y
VALIDATE $? "Nginx"

dnf install python3 -y
VALIDATE $? "python3"