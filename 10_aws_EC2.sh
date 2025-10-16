#!/bin/bash
#######################################
# Script Name   : 010_aws_EC2.sh
# Version       : 2.0 #
# Date          : 15/10/2025 #
# Credit        : Vinayak Deokar #
# Purpose       : Write a shell script that fetches data from an AWS EC2 API and processes the JSON response to print instance IDs and its public and private IP address. #
#######################################


#!/bin/bash

DATA=$(aws ec2 describe-instances --output json)

echo "Instance ID               | Public IP         | Private IP"
echo "--------------------------------------------------------------"
echo "$DATA" | jq -r '.Reservations[].Instances[] | "\(.InstanceId)\t|\t\(.PublicIpAddress // "N/A")\t|\t\(.PrivateIpAddress)"'
