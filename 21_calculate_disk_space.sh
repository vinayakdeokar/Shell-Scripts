#!/bin/bash
#######################################
# Script Name   : 21_calculate_disk_space.sh
# Version       : 2.0 #
# Date          : 15/10/2025 #
# Credit        : Vinayak Deokar #
# Purpose       : Write a script that calculates the total disk space used by a specified user and outputs the result.#
#######################################


#!/bin/bash
read -p "Enter the username: " USERNAME

if ! id "$USERNAME" &>/dev/null; then
    echo "User '$USERNAME' does not exist."
    exit 1
fi

TOTAL_USAGE=$(du -sh /home/$USERNAME 2>/dev/null | awk '{print $1}')

echo "Total disk space used by '$USERNAME': $TOTAL_USAGE"

