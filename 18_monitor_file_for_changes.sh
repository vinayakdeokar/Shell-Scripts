#!/bin/bash
#######################################
# Script Name   : 18_monitor_file_for_changes.sh
# Version       : 2.0 #
# Date          : 15/10/2025 #
# Credit        : Vinayak Deokar #
# Purpose       : Write a shell script that monitors a specified file for changes and executes a specific action when the file is modified.#
#######################################


#!/bin/bash
read -p "Enter file path: " FILE

if [ ! -f "$FILE" ]; 
then
    echo "File does not exist!"
    exit 1
fi

OLD=$(stat -c %Y "$FILE")

while true; do
    NEW=$(stat -c %Y "$FILE")
    
    if [ "$NEW" != "$OLD" ]; then
        echo "$FILE was modified!"
        OLD=$NEW
    fi

    sleep 2
done

