#!/bin/bash

add_num() {
	echo "$1+$2 = $(($1 + $2))"
}

if [ $# -gt 2 ]; then
	echo ${exit:?Invalid no of args $#}
elif [[ $1 =~ ^[0-9]+$ ]] && [[ $2 =~ ^[0-9]+$ ]]
then
	#echo "$1 + $2 = $(($1 + $2))"
	add_num $1 $2
else
	echo "Only integer args accepted!"
fi


