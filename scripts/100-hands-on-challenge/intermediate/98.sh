#!/bin/bash

# Write a script that will display the last (recently) updated file or the latest file in the directory given by the user ?

read -p "Enter a directory to display the most recently updated file: " dir

if [[ ! -d ${dir} ]]
then
  echo "Enter a valid directory."
  exit 1
fi

# find "${dir}" -type f -printf '%T@ %p\n' | sort -n | tail -1 | awk '{print $2}'
# -printf '%T@ %p\n' : 수정시간(epoch time 기준) 파일경로 형태로 출력
ls -ltr "${dir}" | grep -v 'total' | tail -1 | awk '{print $NF}'
