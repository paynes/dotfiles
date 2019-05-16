#!/bin/bash

PREFIX="\x1b["
COL_RESET=$PREFIX"39;49;00m"
COL_RED=$PREFIX"31;01m"
COL_GREEN=$PREFIX"32;01m"
COL_CYAN=$PREFIX"36;01m"


function ok() {
	echo -e "...$COL_GREEN[ok]$COL_RESET" $1
}

function error() {
	echo -e "...$COL_GREEN[$COL_RED"error"$COL_GREEN]$COL_RESET" $COL_RED$1$COL_RESET
}

function cyan_echo() {
	echo -e "$COL_CYAN$1$COL_RESET"
}
