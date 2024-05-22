#!/bin/bash

./monitoring.bash top2.log &

./mem.bash &
./mem2.bash &

dmesg | grep "mem.bash" | tail -n 1 >> ./data/report1.log
dmesg | grep "mem2.bash" | tail -n 1 >> ./data/report2.log
