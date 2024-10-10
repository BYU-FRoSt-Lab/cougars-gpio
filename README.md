This repo contains GPIO hardware controls and bash scripts used by the BYU FRoSt lab's **Cooperative Underwater Group of Autonomous Robots (CoUGARs)**. 
If you're doing code development, feel free to clone this repo directly, make a new branch, and start coding and pushing some changes.
Otherwise (if you're looking to set up a new Coug-UV from scratch), see this repo for instructions on how to get our custom Docker image running instead: https://github.com/BYU-FRoSt-Lab/CoUGARs

A quick high-level overview of the repo:
- **gpio_tools/** - Python scripts for GPIO hardware control.
We'd recommend not running these scripts directly; instead, use the bash scripts in the top-level directory.
- **scripts**
A description of what each bash script does is included as a header comment in the file.
