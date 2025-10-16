#!/bin/bash
#######################################
# Script Name   : 12_syncs_local_directory_with_remote_server.sh
# Version       : 2.0 #
# Date          : 15/10/2025 #
# Credit        : Vinayak Deokar #
# Purpose       : Write a script that periodically syncs a local directory with a remote server using 'rsync' and 'cron' .#
#######################################


#!/bin/bash

# Local directory
LOCAL_DIR="/mnt/vinayak_old/home/vdeokar/remote_dir_test"

# Remote server details
REMOTE_USER="vinayakdeokar"
REMOTE_HOST="10.180.111.141"

# Rsync command
rsync -avz "$LOCAL_DIR" "$REMOTE_USER@$REMOTE_HOST:$REMOTE_DIR"

