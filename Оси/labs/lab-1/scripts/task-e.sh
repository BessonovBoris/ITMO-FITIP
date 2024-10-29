#!/bin/bash

grep '\S* \S* status .*' /var/log/dpkg.log > info.log
