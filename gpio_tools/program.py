'''
:author: Nelson Durrant
:date: September 2024

Puts the Teensy board into program mode
If the Teensy board is on, a red light should light up on it after running this script
'''

import time
import gpiod
import sys
sys.path.append('/home/frostlab/config')

from gpio_def import *

# open the gpio chip and set the program pin as output
chip = gpiod.Chip(GPIO_CHIP)
prog_line = chip.get_line(PROGRAM_PIN)
prog_line.request(consumer="PROG", type=gpiod.LINE_REQ_DIR_OUT)

print("Entering Teensy board program mode . . .")

# set the GPIO pin low then high
prog_line.set_value(0)
time.sleep(2)
prog_line.set_value(1)

print(". . .")
time.sleep(5)

print("[COMPLETE] Entered Teensy board program mode")
prog_line.release()
