#!/bin/bash

# Write a bash script which will fulfill the below requirements:

# Create new directory if not exists /root/Users_Login_Data/ from within the script.

# Capture the current logged in users data [ Username , Login Date and Time , IP Address of User Machine ] only in a file under the /root/Users_Login_Data/ directory.

# The Script must be triggered every minute from Crontab and new file must be created every minute under the  /root/Users_Login_Data/ directory, Keep your file names as Users_Month-Date-Year-Hour-Minute.txt

# So the script will keep on generating txt files under /root/Users_Login_Data/ directory every minute.

# 이후 root cron에 crontab -e로 등록, root 크론에 등록하지 않는다면 권한 오류(/root 디렉토리에 접근 권한이 없기 때문)

current_date=$(date +%m"-"%d"-"%Y"-"%H"-"%M)
dir_path="/root/Users_Login_Data"

mkdir -p "${dir_path}"

who | awk 'BEGIN{OFS=", "}{print "[ "$1,$3,$4,$5" ]"}' | tr -d '()' >> "${dir_path}"/Users_"${current_date}".txt
