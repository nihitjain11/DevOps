#!/bin/bash
if [[ $1 -gt 1 ]];
then
	flag=1
	for ((i = 2 ; i <= `expr $1 / 2` ; i++))
	do
		if [[ `expr $1%$i` -eq 0 ]];
		then
			flag=0
			echo "Not Prime"
			break
		fi
	done
	if [[ $flag -ne 0 ]];
	then
		echo "Prime"
	fi
elif [[ $flag -eq 0 ]]
then
	echo "Not Prime"
fi
