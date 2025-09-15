#!/bin/bash

# Write a script to copy all .log files from /var/log to /tmp direcory. Once all files copied to /tmp directory, replace all the "error" keyword with "Warning" keyword in all .log files at /tmp directory ?

shopt -s nullglob

FILES=(/var/log/*.log)

if [[ ${#FILES[@]} -eq 0 ]]
then
  echo "No log files found."
  exit 1
fi

cp ${FILES[@]} /tmp

for FILE in /tmp/*.log
do
  sed -i 's/error/Warning/gI' "${FILE}"
done
