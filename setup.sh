#!/bin/bash

source ./misc/echos.sh
source ./misc/functions.sh
source ./misc/requires.sh

#Start of setup script
cyan_echo "Start preparing your enviroment.\n"

#Check if user is not root
echo -n "User is not root."

is_root 2>/dev/null

if [ $? -eq 0 ]; then
	ok
else
	error "Error, Need to call this script as normal user, not as a root."
	exit_f
fi

#Check if user is in sudo group
echo -n "User is in sudo group"

has_sudo 2>/dev/null

if [ $? -eq 0 ]; then
	ok
else
	error "Error, User has to be in sudoers group."
	exit_f
fi

#Exit of setup script
exit_f
