#!/bin/bash
#######################################
# Script Name   : 15_list_dir_tree.sh
# Version       : 2.0 #
# Date          : 15/10/2025 #
# Credit        : Vinayak Deokar #
# Purpose       : Write a shell script that finds and lists all files in a directory tree that have not been accessed in a specified number of days.#
#######################################


#!/bin/bash
read -p "Enter directory path: " DIR

if [ ! -d "$DIR" ]; then
    echo "Directory does not exist."
    exit 1
fi

read -p "Enter number of days since last access: " DAYS

echo "Files in $DIR not accessed in the last $DAYS days:"
find "$DIR" -type f -atime +"$DAYS" -print0 | while IFS= read -r -d '' FILE; do
    echo "$(basename "$FILE")"
done

echo "Done listing files."
