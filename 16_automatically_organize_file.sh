#!/bin/bash
#######################################
# Script Name   : 16_automatically_organize_file.sh
# Version       : 2.0 #
# Date          : 15/10/2025 #
# Credit        : Vinayak Deokar #
# Purpose       : Write a shell script that automatically organizes files in a directory based on their file types (e.g., images, documents, audio files).#
#######################################

#!/bin/bash
read -p "Enter directory path: " DIR
cd "$DIR"

mkdir -p Images Documents Audio

mv *.jpg *.png Images/ 2>/dev/null
mv *.pdf *.txt Documents/ 2>/dev/null
mv *.mp3 *.wav Audio/ 2>/dev/null

echo "Files organized successfully!"

