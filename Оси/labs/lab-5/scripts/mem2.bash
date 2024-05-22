#!/bin/bash

logFile="./data/report2.log"
> "$logFile"

array=()
i=0

while true
do
	let i=i+1
	array+=(1 2 3 4 5 6 7 8 9 10)

	if [[ i -eq 100000 ]]
	then
		echo "${#array[*]}_$(date '+%T')" >> "$logFile"
		i=0
	fi
done
