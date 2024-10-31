#!/bin/bash
# Created by Nelson Durrant, Oct 2024
#
# Quick GPIO permission fix
# - Run this from inside the Docker container

sudo groupadd gpiofix
sudo chown :gpiofix /dev/gpiochip4
sudo usermod -aG gpiofix $USERNAME