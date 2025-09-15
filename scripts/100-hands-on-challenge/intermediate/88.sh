#!/bin/bash

# Write a script which will grep "error" in all the "*.log" files at /var/log directory, you need to make a copy of all the log files having "error" keyword in them and place the copy file at your current directory ?

shopt -s nullglob

FILES=(/var/log/*.log)

if [[ "${#FILES[@]}" -eq 0 ]]
then
  echo "No log files found."
  exit 1
fi

for FILE in "${FILES[@]}"
do
  if grep -qi "error" "${FILE}"
  then
    cp "${FILE}" .
    echo "Copied: ${FILE}"
  fi
done
