#!/bin/bash

LOGFILE="/var/log/secure"
THRESHOLD=5
SLACK_WEBHOOK_URL=""
HOSTNAME=$(hostname)

send_to_slack() {
        local message=$1
        curl -X POST --data-urlencode "payload={\"text\": \"${message}\"}" "${SLACK_WEBHOOK_URL}"
}

echo "Checking for suspicious SSH login activities..."
sudo awk '/Failed password for/ {for (i=1;i<=NF;i++) if($i == "from") {print $(i+1)}}' "${LOGFILE}" | sort | uniq -c | sort -nr | while read count ip
do
        if [[ ${count} -gt ${THRESHOLD} ]]
        then
                message="[${HOSTNAME}] Suspicious Activity Detected: ${count} failed login attempts from IP ${ip}"
                echo "${message}"
                send_to_slack "${message}"
        fi
done

