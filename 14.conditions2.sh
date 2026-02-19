#!/bin/bash

echo "Please enter the number"
read NUMBER

if [ (($NUMBER % 2)) ]; then
    echo "Given number $NUMBER is even"
else
    echo "Given number $NUMBER is ODD"
fi    