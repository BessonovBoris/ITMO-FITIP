#!/bin/bash

wc -l /var/log/*.log | awk '/total/ {print($1)}'
