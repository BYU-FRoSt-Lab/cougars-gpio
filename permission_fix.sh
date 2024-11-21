#!/bin/bash
# Created by Nelson Durrant, Oct 2024
#
# Quick GPIO permission fix
# - Specify the chip name using 'bash permission_fix.sh <chip>'

case $1 in
  "")
    printError "No GPIO chip specified"
    printError "Specify the chip name using 'bash permission_fix.sh <chip>'"
    ;;
  *)
    sudo chmod 777 $1
    ;;
esac