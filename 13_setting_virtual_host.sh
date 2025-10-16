#!/bin/bash
#######################################
# Script Name   : 13_setting_virtual_host.sh
# Version       : 2.0 #
# Date          : 15/10/2025 #
# Credit        : Vinayak Deokar #
# Purpose       : Write a shell script that automates the process of setting up a new virtual host on a web server.#
#######################################


#!/bin/bash

[ "$EUID" -ne 0 ] && echo "Run as root" && exit 1

read -p "Domain name: " DOMAIN

DIR="/var/www/$DOMAIN"
CONF="/etc/httpd/conf.d/$DOMAIN.conf"

mkdir -p "$DIR"
echo "$DOMAIN is live!" > "$DIR/index.html"

cat > "$CONF" <<EOF
<VirtualHost *:80>
    ServerName $DOMAIN
    DocumentRoot $DIR
</VirtualHost>
EOF

systemctl reload httpd
echo "$DOMAIN virtual host created!"

