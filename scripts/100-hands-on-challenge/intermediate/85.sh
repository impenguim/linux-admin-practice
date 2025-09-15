#!/bin/bash

# Write a script which will grep "error" in all the "*.log" files at /var/log directory, you need to print the unique file names which are having "error" string in them and remove duplicate file names from output ?

shopt -s nullglob

FILES=(/var/log/*.log)

if [[ ${#FILES[@]} -eq 0 ]]
then
  echo "No log files found."
  exit 1
fi

grep -l "error" "${FILES[@]}" | sort | uniq
