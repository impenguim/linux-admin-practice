#!/bin/bash

# Write a script that will return the 10 largest directories and file (in terms of size) in the "/var/log" directory ?

DIR_PATH='/var/log'

du -ah "${DIR_PATH}" | sort -rh | head -n 10


