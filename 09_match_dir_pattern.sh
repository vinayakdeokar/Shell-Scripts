#!/bin/bash
#######################################
# Script Name   : 09_match_dir_pattern.sh
# Version       : 2.0 #
# Date          : 15/10/2025 #
# Credit        : Vinayak Deokar #
# Purpose       : Write a shell script that scans a directory for files matching a certain pattern and deletes them. #
#######################################

#!/bin/bash
read -p " give pattern: " PATTERN
read -p "give the path of directory: " DIR
DIR="$DIR"
PATTERN="$PATTERN"

find "$DIR" -type f -name "$PATTERN" -exec rm -f {} \;

echo "Files matching $PATTERN deleted from $DIR."

