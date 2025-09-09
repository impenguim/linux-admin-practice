#!/bin/bash

if (( $(date +%d) % 2 == 0 ))
then
  echo "Even Day"
else
  echo "Odd Day"
fi

exit 0
