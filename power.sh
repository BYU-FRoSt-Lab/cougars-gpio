#!/bin/bash
# Created by Nelson Durrant, Sep 2024
#
# Toggles the power state of the Teensy 4.1
# - Specify a power state using 'bash power.sh <state>'

# Match with the username defined in the Dockerfile
export UNAME=frostlab

function printInfo {
  echo -e "\033[0m\033[36m[INFO] $1\033[0m"
}

function printWarning {
  echo -e "\033[0m\033[33m[WARNING] $1\033[0m"
}

function printError {
  echo -e "\033[0m\033[31m[ERROR] $1\033[0m"
}

case $1 in
    "on")
        if [ -z "$(tycmd list | grep Teensy)" ]; then
            sudo python3 /home/$UNAME/gpio/gpio_tools/toggle_power.py
        else
            printWarning "Teensy is already powered on"
        fi
        ;;
    "off")
        if [ -z "$(tycmd list | grep Teensy)" ]; then
            printWarning "Teensy is already powered off"
        else
            sudo python3 /home/$UNAME/gpio/gpio_tools/toggle_power.py
        fi
        ;;
    *)
        printWarning "No power state specified"
        printWarning "Specify a power state using 'bash power.sh <state>'"
        ;;
esac
