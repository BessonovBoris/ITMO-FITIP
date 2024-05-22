#!/bin/bash

logFile="$1"

if [[ $(top -b -n 1 | awk '$12 ~ /mem(2?).bash/') == "" ]]
then
	exit 0
fi

echo $(date '+%F_%T') >> "$logFile"
top -b -n 1 | awk 'NR ~ 4 || NR ~ 5 || $12 ~ /mem.bash/ || (NR > 7 && NR < 12)' >> "$logFile"

echo -e "\n" >> "$logFile"
