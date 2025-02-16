#!/bin/bash


<<info
This script allow you to take 
backups from specified arguments


eg.
./backup.sh <source> <destination>

zip -r /home/ubuntu/backups/backup-$timestamp.zip /home/ubuntu/scripts
src = /home/ubuntu/scripts
des = /home/ubuntu/backups

takes the backup of scripts dir and store it in the backups dir

info


timestamp=$(date '+%Y-%m-%d-%H-%M')
# include the timestamp in backup zip file name (to easily indentify backup
zip -r "$1/backup-$timestamp.zip" $2 > /dev/null

#aws s3 sync $1 s3://periodic-backup-bucket

echo "backup completed"

