#!/bin/bash
#######################################
# Script Name   : 20_retrieves_current_wheather.sh
# Version       : 2.0 #
# Date          : 15/10/2025 #
# Credit        : Vinayak Deokar #
# Purpose       : Write a shell script that retrieves the current weather for a specified location using a weather API.#
#######################################


#!/bin/bash
read -p "Enter location: " location

echo "Fetching weather for $location..."
curl -s "https://wttr.in/$location?format=3"

