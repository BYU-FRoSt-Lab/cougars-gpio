#!/bin/bash
# Created by Nelson Durrant, Sep 2024
#
# Toggles the power state of the Teensy 4.1
# - Specify a power state using 'bash power.sh <state>'

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

            sudo python3 /home/frostlab/gpio/gpio_tools/toggle_power.py
        else
            echo ""
            printInfo "Teensy is already powered on"
            echo ""
        fi
        ;;
    "off")

        if [ -z "$(tycmd list | grep Teensy)" ]; then
            echo ""
            printInfo "Teensy is already powered off"
            echo ""
        else

            sudo python3 /home/frostlab/gpio/gpio_tools/toggle_power.py
        fi
        ;;
    *)
        echo ""
        printWarning "No power state specified"
        printWarning "Specify a power state using 'bash power.sh <state>'"
        echo ""
        ;;
esac
