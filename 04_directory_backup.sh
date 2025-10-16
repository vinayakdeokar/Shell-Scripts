#!/bin/bash
#######################################
# Script Name   :  04_directory_backup.sh
# Version       :  2.0 #
# Date          :  15/10/2025 #
# Credit        :  Vinayak Deokar #
# Purpose       :  Write a script that backs up a specified directory to a remote server using 'rsync' and SSH.#
#######################################

#!/bin/bash
LOCAL_DIR="/home/vdeokar/ssh_document"
REMOTE_USER="vinayakdeokar"
REMOTE_HOST="192.168.1.7"
REMOTE_DIR="/home/vinayakdeokar/remote_backup/"

rsync -avz "$LOCAL_DIR" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR"
if [ $? -eq 0 ];
then 
	echo "backup successfull."
else
echo "backup failed"
fi



