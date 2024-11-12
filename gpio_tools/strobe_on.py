'''
:author: Nelson Durrant
:date: September 2024

Turns on the strobe light
'''

import time
import gpiod
import sys
sys.path.append('/home/frostlab/config')

from gpio_def import *

# open the gpio chip and set the strobe pin as output
chip = gpiod.Chip(GPIO_CHIP)
strobe_line = chip.get_line(STROBE_PIN)
strobe_line.request(consumer="STROBE", type=gpiod.LINE_REQ_DIR_OUT)

print("[COMPLETE] Strobe light turned on")

try:
    while True:
        strobe_line.set_value(1)
        time.sleep(STROBE_RATE)
        strobe_line.set_value(0)
        time.sleep(STROBE_RATE)
finally:
    strobe_line.release()
