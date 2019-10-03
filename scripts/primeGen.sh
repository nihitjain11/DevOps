#!/bin/bash
flag=0
echo "Prime numbers between $1 and $2 are:"
for ((i = $1 ; i <= $2 ; i++))
do
	if [[ $i -le 1 ]]; then
		continue
	fi
	
	flag=1
	
	k=$((i / 2))
	
	for ((j = 2 ; j <= $k ; j++))
       	do
		if [[ `expr $i%$j` -eq 0 ]]; 
		then
		     flag=0
		     break
	     	fi
     	done

	if [[ $flag -eq 1 ]]; 
	then
		     echo $i
	fi
done
