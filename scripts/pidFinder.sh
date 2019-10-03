#!/bin/sh
pidof() {
	echo "$(pgrep $1)"
}

pidof "$1"
