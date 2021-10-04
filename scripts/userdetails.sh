#!/bin/sh
userDetails() {
	name=`id -nu $1`
	home=`cat /etc/passwd | grep $name | cut -d ':' -f 6`
	shell=`cat /etc/passwd | grep $name | cut -d ':' -f 7`
	gid=`cat /etc/passwd | grep $name | cut -d ':' -f 4`
	group=`groups $name`
	echo "name -> $name\nhome -> $home\nshell -> $shell\ngroup_num -> $gid\ngroups -> $group"
}
userDetails "$1"
