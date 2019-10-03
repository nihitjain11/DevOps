#!/bin/sh
lastlog() {
	name=`id -nu $1`
	echo "$(last | grep $name | wc -l)"
}
lastlog "$1"
