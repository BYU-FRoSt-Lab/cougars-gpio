'''
:author: Nelson Durrant
:date: September 2024

Turns off the strobe light
'''

import gpiod

from gpio_def import *

# open the gpio chip and set the strobe pin as output
chip = gpiod.Chip('/dev/gpiochip4')
strobe_line = chip.get_line(STROBE_PIN)
strobe_line.request(consumer="STROBE", type=gpiod.LINE_REQ_DIR_OUT)

strobe_line.set_value(0)
strobe_line.release()

print("[COMPLETE] Strobe light turned off")
