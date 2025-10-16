#!/bin/bash
#######################################
# Script Name   : 19_creating_database.sh
# Version       : 2.0 #
# Date          : 15/10/2025 #
# Credit        : Vinayak Deokar #
# Purpose       : Write a script that automates the process of creating a new MySQL database, user, and granting privileges.#
#######################################


#!/bin/bash

read -p "Enter database name: " DB_NAME
read -p "Enter MySQL username: " DB_USER
read -s -p "Enter password for MySQL user: " DB_PASS
echo

mysql -u root -p <<EOF
CREATE DATABASE IF NOT EXISTS $DB_NAME;
CREATE USER IF NOT EXISTS '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASS';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost';
FLUSH PRIVILEGES;
EOF

echo "Database and user created successfully!"
