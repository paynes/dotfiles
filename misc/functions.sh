#!/bin/bash

function check_package_installed() {
	sudo dnf list installed $1

	if [ $? -eq 0 ]; then
		return 0
	else
		return 1
	fi
}

function exit_f() {
	cyan_echo "\nEnd of preparing your enviroment"
	exit 1
}
