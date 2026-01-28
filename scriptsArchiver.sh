#!/bin/bash

#This script uses the find command to search for all files with the .sh extension in your home directory (and subfolders)
echo "Finding files..."
file="shellscripts.tar.gz"
mkdir -p /tmp/shellscripts

find /home/$USER -type f -name "*.sh" -exec cp {} /tmp/shellscripts/ \; 
if [ $? -eq 0 ]
then 
	echo "Archiving..."
	tar -zcvf /tmp/$file -C /tmp shellscripts
	if [ $? -eq 0 ]
	then 
		tar -tf /tmp/$file | grep "\.sh" | wc -l
	        count=$(tar -tf /tmp/$file | grep "\.sh" | wc -l)
		echo "$count files have been archived in $file"	
	else
		echo "Something went wrong"
		exit 1
	fi
else
	echo "There are no files"
	exit 1
fi
