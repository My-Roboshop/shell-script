#!/bin/bash

USERID=$(id -u)

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

LOGS_FOLDER="/var/log/shell-script"
SCRIPT_NAME=$( echo $0 | cut -d "." -f1 )
LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"

mkdir -p $LOGS_FOLDER
echo "Script started executing at $(date)" | tee -a $LOG_FILE

if [ $USERID -ne 0 ]; then
    echo "ERROR:: Please run the user with root previlizes"
    exit 1 # Failure is other than 0
fi

VALIDATE () { # Functions receive inputs through args just like shell script args
if [ $1 -ne 0 ]; then
    echo -e "ERROR:: Installing $2... $R Failure $N" | tee -a $LOG_FILE
    exit 1
else
    echo -e "Installing $2... $G successful $N" | tee -a $LOG_FILE
fi
}

for package in $@
do
    # check package is already in
    dnf list installed $package &>> $LOG_FILE

    # If exit status is 0, package is already installed, if not equal to 0, we need to install it.
    if [ $? -ne 0 ]; then

    else
        echo -e "$package already installed ... $Y SKIPPING $N"
    fi    
done