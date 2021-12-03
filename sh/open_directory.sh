#!/bin/bash

echo executing $0

if [ ! -d "$1" ]
then
	echo $1 is not a directory.
	exit 1
fi

cd "$1"
xdg-open .
