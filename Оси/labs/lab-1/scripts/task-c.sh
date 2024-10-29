#!/bin/bash

echo "1. Start nano"
echo "2. Start VI"
echo "3. Start links browser"
echo "4. Exit"

read Input

case "$Input" in
	1)
		echo "Enter file name"
		read FileName
		sudo nano "$FileName"
	;;

	2)
		echo "Enter file name"
		read FileName
		vi "$FileName"
	;;

	3)
		echo "Enter 3"
		sudo elinks
	;;

	4)
		exit 0
	;;

	*)
		echo "There no such command"
	;;
esac
