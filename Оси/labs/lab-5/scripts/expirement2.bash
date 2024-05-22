#!/bin/bash

N="$1"
K="$2"

i=1

while [[ i -le K ]]
do
	let i=i+1
	./newmem.bash "$N"

	sleep 1
done
