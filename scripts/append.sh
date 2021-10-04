#!/bin/bash
if [[ $1 == '-h' ]]
then
	echo "help: run as ./$(basename $0) <filename> <append@start> <append@end>"
else
	cat "$1" | sed "s/^/$2/" | sed "s/$/$3/"
fi
