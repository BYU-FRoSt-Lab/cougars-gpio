#!/bin/bash
# Created by Nelson Durrant, Sep 2024
#
# Turns the strobe light on or off
# - Specify a power state using 'bash strobe.sh <state>'

function printInfo {
  echo -e "\033[0m\033[96m[INFO] $1\033[0m"
}

function printWarning {
  echo -e "\033[0m\033[93m[WARN] $1\033[0m"
}

function printError {
  echo -e "\033[0m\033[91m[ERROR] $1\033[0m"
}

case $1 in
  "on")
    python3 ~/gpio/gpio_tools/strobe_on.py &
    ;;
  "off")
    killall python3
    python3 ~/gpio/gpio_tools/strobe_off.py
    ;;
  *)
    printError "No power state specified"
    printError "Specify a power state using 'bash strobe.sh <state>'"
    ;;
esac
