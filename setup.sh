#!/bin/bash

source ./misc/echos.sh
source ./misc/functions.sh
source ./misc/requires.sh

#Start of setup script
cyan_echo "Start preparing your enviroment.\n"

#Check if user is not root
echo -n "User is not root."
is_root 2>/dev/null

#Check if user is in sudo group
echo -n "User is in sudo group"
has_sudo 2>/dev/null

#Check if python library is installed
echo -n ""
check_package_installed vlc

#Exit of setup script
exit_f
