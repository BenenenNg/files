#!/bin/bash

echo executing $0

if [ ! -d "$1" ]
then
	echo target directory not specified / does not exist	
	exit 1
fi

find /mnt/c/Users/User/Downloads -maxdepth 1 -mindepth 1 -mmin -5 | while read f
do
	mv "$f" "$1"
	echo moved `echo "$f" | rev | cut -d/ -f1 | rev`
done
