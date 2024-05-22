#!/bin/bash

Max="$1"

if [[ "$2" -gt "$Max" ]]
then
	Max="$2"
fi

if [[ "$3" -gt "$Max" ]]
then
	Max="$3"
fi

echo "$Max"
