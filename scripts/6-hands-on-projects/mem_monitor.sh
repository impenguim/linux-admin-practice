#!/bin/bash

# Bash script notifies you in case the free memory is less than 100MB.

SLACK_WEBHOOK_URL=''

THRESHOLD=100

FREE_MEM=$(vmstat -S m | awk 'NR==3 {print $4}')

HOSTNAME=$(hostname)

if [[ "${FREE_MEM}" -lt "${THRESHOLD}" ]]
then
  MESSAGE=":exclamation: ALERT - Free memory on ${HOSTNAME} is less than ${THRESHOLD}MB."

  curl -X POST -H 'Content-Type: application/json' --data "{'text': '$MESSAGE'}" "$SLACK_WEBHOOK_URL"
fi
