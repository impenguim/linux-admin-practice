#!/bin/bash

# Create a file named as "devops.txt" , then using vi editor insert 1..10 numbers like shown below
# 1
# 2
# .
# .
# 10
# then write a script to calculate sum of all numbers written inside devops.txt file ?

awk '{sum+=$1} END {print sum}' devops.txt
