#!/bin/bash
sudo dnf distro-sync
sudo dnf -y upgrade
sudo snap refresh
sudo dracut --force
