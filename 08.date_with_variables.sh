#!/bin/bash

START_TIME=$(date +%s)

sleep 10

END_TIME=$(date +%s)

Total_Time=$(($END_TIME-$START_TIME))

echo "Script executed in $Total_Time Seconds"