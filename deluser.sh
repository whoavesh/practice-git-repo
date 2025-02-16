#!/bin/bash

echo "======= Deletion of user started ======="

read -p "Enter the user you want to delete: " uname

sudo userdel $uname

grep "$uname" /etc/passwd | wc | awk '{print $1}' 

echo "$uname deleted successfully"

echo "======= Deletion of user completed ======="


