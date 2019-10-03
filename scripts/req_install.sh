#!/bin/bash
sudo apt-get update
while read line 
do
	sudo apt-get install $line -y
done < requirements.txt
