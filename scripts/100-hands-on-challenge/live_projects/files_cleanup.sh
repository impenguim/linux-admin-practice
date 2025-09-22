#!/bin/bash

# In the previous script we have created a new script which will keep on generation txt files under the /root/Users_Login_Data/ directory every minute.

# But most of times we need to clean older files which are not required after a certain period of time.

# So create a new script which will can delete the .txt files from the /root/Users_Login_Data/ directory which are older than 60 Minutes.

# Make Sure Script must print all file names before deleting in a log file at '/root/delete.log'

# Schedule your script to run every minute.

find /root/Users_Login_Data/ -mmin +60 -type f | while read filename
do
  echo "$(date +%Y-%m-%d" "%H:%M): deleting ${filename}" >> /root/delete.log
  rm -f "${filename}"
  if [[ $? -ne 0 ]]
  then
    echo "Failed to delete ${filename}" >&2
  fi
done

# 이후 cronjob(sudo crontab -e)에 등록
