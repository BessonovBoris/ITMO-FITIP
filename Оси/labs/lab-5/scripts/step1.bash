#!/bin/bash

./monitoring.bash top.log &

./mem.bash &

dmesg | grep "mem.bash" | tail -n 1 >> ./data/report.log
