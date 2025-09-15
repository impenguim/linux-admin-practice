#!/bin/bash

# Write a script to copy all .log files from /var/log to /tmp direcory. Once all files copied to /tmp directory, replace the first occurrence of "host" keyword with "Machine" keyword in all .log files (if host keyword is repeated multiple times within single row, then first host keyword will be replaced) ?

shopt -s nullglob

FILES=(/var/log/*.log)

if [[ ${#FILES[@]} -eq 0 ]]
then
  echo "No log files found."
  exit 1
fi

cp "${FILES[@]}" /tmp

for FILE in /tmp/*.log
do
  sed -i 's/host/Machine/' ${FILE}
# awk '{ sub("host","Machine"); print }' ${FILE}
done

