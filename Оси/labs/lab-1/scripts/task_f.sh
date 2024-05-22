#!/bin/bash

cat /var/log/dpkg.log | awk '$3 ~ /^install$/ {print ($2, " STARTING ", $4); next}; $3 ~ /^status$/ && $4 ~ /^installed$/ {print ($2, " FINSIH ", $5)}' > install.log
