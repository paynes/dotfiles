#!/bin/bash

#Function checks if user is not root
is_root() {
        if [ $(id -u) -eq 0 ]; then
                return 1
        else
                return 0
        fi
}

#Function checks if user has sudo privileges
has_sudo() {
        sudo -nv 2>/dev/null

        if [ $? -eq 0 ]; then
                return 0
	else
		return 1
        fi
}
