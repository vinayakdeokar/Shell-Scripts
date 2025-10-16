#!/bin/bash
#######################################
# Script Name   : 06_archive.sh #
# Version       : 2.0 #
# Date          : 15/10/2025 #
# Credit        : Vinayak Deokar #
# Purpose       : Write a script that compresses and archives log files older than a certain number of days. #
#######################################

#!/bin/bash
read -p "enter number of days: " DAYS 

find /var/log -type f -mtime +$DAYS > tar.txt

tar -czvf archive.tar.gz -T tar.txt

echo "files older than $DAYS are archived into archive.tar.gz."

