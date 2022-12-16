#!/bin/bash
sudo ln -s /var/lib/snapd/snap /snap
sudo snap refresh
sudo snap install core
sudo snap install discord
figlet -cw 200 "YOU'RE DISCORD'S READY"
sudo snap install telegram-desktop
figlet -cw 200 "TELEGRAM'S READY"
sudo snap install --classic code
figlet -cw 200 "VS CODE'S READY"
sudo snap install onlyoffice-desktopeditors
figlet -cw 200 "ONLYOFFICE'S READY"
sudo snap install thefuck --edge --classic
figlet -cw 200 "FUCK'S READY"