#!/bin/bash
#######################################
# Script Name   : 07_system_report.sh
# Version       : 2.0 #
# Date          : 15/10/2025 #
# Credit        : Vinayak Deokar #
# Purpose       : Write a shell script that generates a report of system resource usage, including CPU, memory, and disk usage. #
#######################################

#!/bin/bash

echo "System Report - $(date)"
echo "------------------------"
echo "CPU Usage:"
top -bn1 | grep "Cpu(s)"
echo
echo "Memory Usage:"
free -h
echo
echo "Disk Usage:"
df -h



