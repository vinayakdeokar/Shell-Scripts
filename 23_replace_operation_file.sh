#!/bin/bash
#######################################
# Script Name   : 23_replace_operation_file.sh
# Version       : 2.0 #
# Date          : 15/10/2025 #
# Credit        : Vinayak Deokar #
# Purpose       : Write a script that performs a search and replace operation on multiple files in a directory.#
#######################################



#!/bin/bash

read -p "Enter directory path: " DIR
read -p "Enter text to search: " SEARCH
read -p "Enter text to replace with: " REPLACE

sed -i "s/$SEARCH/$REPLACE/g" "$DIR"/*

echo "Search and replace completed in $DIR"

