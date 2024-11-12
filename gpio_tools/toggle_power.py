'''
:author: Nelson Durrant
:date: September 2024

Toggles the power to the Teensy 4.1 board
'''

import time
import gpiod
import sys
sys.path.append('/home/frostlab/config')

from gpio_def import *

# open the gpio chip and set the on/off pin as output
chip = gpiod.Chip(GPIO_CHIP)
power_line = chip.get_line(POWER_PIN)
power_line.request(consumer="POWER", type=gpiod.LINE_REQ_DIR_OUT)

print("Toggling Teensy board power . . .")

# Set the GPIO pin high, low, and then high
power_line.set_value(1)
time.sleep(2)
power_line.set_value(0)
time.sleep(5)
power_line.set_value(1)

print(". . .")
time.sleep(5)
print("[COMPLETE] Teensy board power toggled")

power_line.release()
