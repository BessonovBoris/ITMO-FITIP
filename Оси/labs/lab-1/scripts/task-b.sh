#!/bin/bash

Input=""
Output=""

while [[ "$Input" != "q" ]]
do
	Output="$Output$Input"
	read Input
done

echo "$Output"
