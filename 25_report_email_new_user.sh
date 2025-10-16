#!/bin/bash
#######################################
# Script Name   : 25_report_email_new_user.sh
# Version       : 2.0 #
# Date          : 15/10/2025 #
# Credit        : Vinayak Deokar #
# Purpose       : Write a script that generates and emails a report of newly created user accounts on a Linux system within the last 24 hours.#
#######################################


#!/bin/bash

EMAIL="your_email@example.com"

BODY="New Users in Last 24 Hours:\n"

for DIR in /home/*; do
  [ -d "$DIR" ] || continue
  
    if [ $(stat -c %Y "$DIR") -ge $(date -d '1 day ago' +%s) ]; then
    BODY+=$(basename "$DIR")$'\n'
  fi
done

if [ "$BODY" != "New Users in Last 24 Hours:\n" ]; then
  echo -e "$BODY" | mail -s "New Users Report" "$EMAIL"
  echo "Report sent to $EMAIL"
else
  echo "No new users in the last 24 hours."
fi


