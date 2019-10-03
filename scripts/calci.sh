#!/bin/bash
if [[ $1 == '-h' ]]
then
	echo "help for calci: just enter ./$(basename "$0") without any args."
else
	echo -en "Welcome to Calculator!! \n Script by - Nihit\n\nEnter the "
	echo -n "first no: "
	read a
	echo -n "second no: "
	read b
	echo -n "operation (+,-,/,*): "
	read op
	while ! [[ $op =~ ^('+'|'-'|'/'|'*')$ ]]
	do
		echo -n "enter correct operator from (+,-,/,*): "
		read op
	done
	case $op in
		'+')
			echo "$a+$b=$(($a+$b))"
			;;
		'-')
			echo "$a-$b=$(($a-$b))"
			;;
		'/')
			echo "$a/$b=$(($a/$b))"
			;;
		'*')
			echo "$a*$b=$(($a*$b))"
			;;
	esac
fi
