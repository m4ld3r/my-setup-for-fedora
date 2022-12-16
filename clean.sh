#!/bin/bash
sudo dnf clean all
sudo dnf -y autoremove
sudo pkcon refresh force
sudo rm -v -f ~/.cache/thumbnails/*/*.png ~/.thumbnails/*/*.png
sudo rm -v -f ~/.cache/thumbnails/*/*/*.png ~/.thumbnails/*/*/*.png
sudo rm -f /var/lib/dnf/history.sql*
sudo dracut --force
