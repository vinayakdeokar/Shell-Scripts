#!/bin/bash
#######################################
# Script Name   : 22_system_log_email.sh
# Version       : 2.0 #
# Date          : 15/10/2025 #
# Credit        : Vinayak Deokar #
# Purpose       : Write a shell script that sends a daily summary of system logs via email.#
#######################################



#!/bin/bash

EMAIL="your_email@example.com"
SUBJECT="Daily System Log Summary"

{
  echo "Subject: $SUBJECT"
  echo
  echo "System log summary for $(date)"
  echo "---------------------------------"
  tail -n 50 /var/log/messages
} | sendmail "$EMAIL"

echo "Daily system log summary sent to $EMAIL"

