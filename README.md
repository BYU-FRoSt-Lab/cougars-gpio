This repo contains microROS dev environments, GPIO hardware controls, and bash scripts used by the BYU FRoSt lab's **Cooperative Underwater Group of Autonomous Robots (CoUGARs)**. 
If you're doing code development, feel free to clone this repo directly, make a new branch, and start coding and pushing some changes.
Otherwise (if you're looking to set up a new Coug-UV from scratch), see this repo for instructions on how to get our custom Docker image running instead: https://github.com/BYU-FRoSt-Lab/CougarsSetup

A quick high-level overview of the repo:
- **cougars/** - PlatformIO dev environment for the Teensy.
Source code and header files are included in "cougars/src/" and "cougars/include/", and dependencies can be imported by modifying the "cougars/platformio.ini" file.
Different sensors can be enabled/disabled by commenting out the #define statements at the top of "cougars/src/main.cpp" and rebuilding.
- **firmware_options/** - pre-compiled firmware hex files that can be uploaded to the vehicles.
Custom hex files added to this directory can be uploaded to the Teensy boards using the "upload.sh" script.
- **gpio_tools/** - Python scripts for GPIO hardware control.
We'd recommend not running these scripts directly; instead, use the bash scripts in the top-level directory.
- **scripts (build.sh, upload.sh, etc)** - automates helpful software tasks on the AUV.
For example, running "bash msg_update.sh cougars" will remove the microROS library from the cougars workspace and rebuild it using updated message and service declarations from "cougars/extra_packages/frost_interfaces."
A description of what each script does is included as a header comment in the file.
