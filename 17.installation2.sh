#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run the user with root previlizes"
    exit 1 # Failure is other than 0
fi

dnf install mysql -y

if [ $? -ne 0 ]; then
    echo "ERROR:: MySQL is failure"
    exit 1
else
    echo "MySQL is successful"
fi

dnf install nginx -y


if [ $? -ne 0 ]; then
    echo "ERROR:: Nginx is failure"
    exit 1
else
    echo "Nginx is successful"
fi

dnf install mongodb-mongosh -y


if [ $? -ne 0 ]; then
    echo "ERROR:: mongodb-mongosh is failure"
    exit 1
else
    echo "mongodb-mongosh is successful"
fi