#!/bin/bash

readonly project="SHELL SCRIPTING TASK"
readonly owner="Nistha"

user=$(whoami)
logfile="data.log"
userfile="user.txt"

echo "Enter your role(admin/developer)"
read role

insert_data(){
	echo "$(date) -$1" >> $logfile
}
show_information(){
	echo "USERNAME: $(whoami)"
	echo "IP: $(hostname -I)"
	insert_data "User Information"
}

add_user(){
	echo "$1" >> "$userfile"
	insert_data "Added user: $1"
	echo "User '$1' added sucessfully"
	insert_data "User Added"
}

echo "Press 1 for System Information"
echo "Press 2 to Add user"
read choice

case $choice in
	1) show_information ;;
	2) if [ "$role" = "admin" ]
		then
		echo "Enter users name"
		read uname
		add_user "$uname"
	   else
		echo "Only Admin Access"
	   fi ;;

	*) echo "Wrong Input"
esac

insert_data
show_information
