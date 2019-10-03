#!/bin/bash
usum=0
gsum=0
while read line
do
	u=$(echo $line | cut -d ':' -f 3)
	usum=`expr $usum + $u`
	g=$(echo $line | cut -d ':' -f 4)
	gsum=`expr $gsum + $g`
done
echo $usum $gsum
