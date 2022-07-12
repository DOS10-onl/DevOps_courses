#!/bin/bash

# detects how many files were created in the directory
ls | wc -l

# replaces all permissions set to 777 with 664
for file in /home/dmitryyankov/lesson13/*
do
	if [ $(stat -c "%a" "$file") == "777" ]
	then
		chmod 664 $file
	fi
done

# detects empty files and removes them
find /home/dmitryyankov/lesson13 -type f -size 0 -print -delete

# removes all lines except the first one
for file in /home/dmitryyankov/lesson13/*
do
	sed -n -i '1p' $file
done
