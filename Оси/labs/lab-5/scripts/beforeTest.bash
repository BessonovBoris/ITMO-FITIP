#!/bin/bash

logFile="./data/beforeTest.log"

> "$logFile"

ram=$(free -h | awk 'NR ~ 2 {print $2}')
swap=$(free -h | awk 'NR ~ 3 {print $2}')
virtPage=$(getconf PAGE_SIZE)"kB"
freeRam=$(free -h | awk 'NR ~ 2 {print $4}')
freeSwap=$(free -h | awk 'NR ~ 3 {print $4}')

echo "All RAM: $ram" >> "$logFile"
echo "All swap: $swap" >> "$logFile"
echo "Virtual page size: $virtPage" >> "$logFile"
echo "Free RAM: $freeRam" >> "$logFile"
echo "Free swap: $freeSwap" >> "$logFile"
