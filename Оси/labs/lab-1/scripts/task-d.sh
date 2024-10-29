#!/bin/bash

if [[ "$PWD" == "$HOME" ]]
then
	echo "$HOME"
	exit 0
else
	echo "ERROR. Script run not in home directory"
	exit 1
fi
