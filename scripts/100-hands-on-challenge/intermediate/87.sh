#!/bin/bash

# Write a script which will grep "error" or "host" keywords in all the "*.log" files at /var/log directory, you need to print all the errors on screen which are having both keywords in same row ?

shopt -s nullglob

FILES=(/var/log/*.log)

if [[ ${#FILES[@]} -eq 0 ]]
then
  echo "No log files found."
  exit 1
fi

grep -i "error" ${FILES[@]} | grep -i "host"
