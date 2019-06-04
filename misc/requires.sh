#!/bin/bash

#Function checks if user is not root
is_root() {
        if [ $(id -u) -eq 0 ]; then
                error "Error, Need to call this script as normal user, not as a root."
		exit_f
        else
                ok
        fi
}

#Function checks if user has sudo privileges
has_sudo() {
        sudo -nv 2>/dev/null

        if [ $? -eq0 ]; then
                ok
	else
		error "Error, User has to be in sudoers group."
		exit_f
        fi
}
