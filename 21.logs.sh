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

dnf list installed mysql &>>$LOG_FILE | tee -a $LOG_FILE
# Install if it is not found
if [ $? -ne 0 ]; then
    dnf install mysql -y &>>$LOG_FILE | tee -a $LOG_FILE
    VALIDATE $? "MYSQL"
else
    echo "MySQL already exist ... $G SKIPPING $N"
fi

dnf list installed nginx &>>$LOG_FILE | tee -a $LOG_FILE
if [ $? -ne 0 ]; then
    dnf install nginx -y &>>$LOG_FILE | tee -a $LOG_FILE
    VALIDATE $? "Nginx"
else
    echo "Nginx already exist ... $G SKIPPING $N"
fi       

dnf list installed python3 &>>$LOG_FILE | tee -a $LOG_FILE
if [ $? -ne 0 ]; then
    dnf install python3 -y &>>$LOG_FILE | tee -a $LOG_FILE
    VALIDATE $? "python3"
else
    echo "Python3 already exist ... $G SKIPPING $N"
fi    
