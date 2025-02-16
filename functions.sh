#!/bin/bash

<<info 
This script declare and call a function to 
create a user
info

function create_user {

	echo "========== Creation of User Started ==========="

	read -p "Enter username: " uname
	read -p "Enter a password: " pswd

	sudo useradd -m "$uname" -s /bin/bash

	echo -e "$pswd\n$pswd" | sudo passwd "$uname"

	echo "========== Creation of User completed ==========="
}

create_user
<<newinfo 

#used for loop to avoid copy pasting the
#function call everytime

for (( num=1; num<=3; num++ ))
do 
	create_user
done

newinfo
