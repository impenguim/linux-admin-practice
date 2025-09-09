#!/bin/bash

# Write a script that will ask username and password from user and then using if condition verify if username="admin" and password="admin" , if condition meets then print "Login Success" else print "Wrong Login" ?

read -p 'Enter your name: ' username
read -p 'Enter your password: ' password
if [[ "${username}" = 'admin' && "${password}" = 'password' ]]
then
  echo 'Login Success'
else
  echo 'Wrong Login' >&2
  exit 1
fi

exit 0 
