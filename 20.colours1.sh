#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"



if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run the user with root previlizes"
    exit 1 # Failure is other than 0
fi

VALIDATE () { # Functions receive inputs through args just like shell script args
if [ $1 -ne 0 ]; then
    echo -e "ERROR:: Installing $2... $R Failure $N"
    exit 1
else
    echo -e "Installing $2... $G successful $N"
fi
}

dnf list installed mysql
# Install if it is not found
if [ $? -ne 0 ]; then
    dnf install mysql -y
    VALIDATE $? "MYSQL"
else
    echo "MySQL already exist ... $G SKIPPING $N"
fi

dnf list installed nginx
if [ $? -ne 0 ]; then
    dnf install nginx -y
    VALIDATE $? "Nginx"
else
    echo "Nginx already exist ... $G SKIPPING $N"
fi       

dnf list installed python3
if [ $? -ne 0 ]; then
    dnf install python3 -y
    VALIDATE $? "python3"
else
    echo "Python3 already exist ... $G SKIPPING $N"
fi    