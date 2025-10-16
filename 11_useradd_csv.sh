#!/bin/bash
#######################################
# Script Name   : 11_useradd_csv.sh
# Version       : 2.0 #
# Date          : 15/10/2025 #
# Credit        : Vinayak Deokar #
# Purpose       : Write a shell script that adds new users to the system based on a list of names in a CSV file.#
#######################################

#!/bin/bash

while read username
do

if id "$username" &>/dev/null;
then
        echo "User $username already exists."
else
         useradd -m -k /etc/skel "$username" 2>/dev/null
	 echo "User $username created."
fi
done < users.csv

