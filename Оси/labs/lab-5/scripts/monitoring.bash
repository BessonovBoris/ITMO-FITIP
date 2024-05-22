#!/bin/bash

logFile="./data/$1"

> "$logFile"

watch -n 1 ./monitorScript.bash "$logFile"
