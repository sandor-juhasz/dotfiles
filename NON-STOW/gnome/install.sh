#!/bin/bash

gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/ubuntu-default-greyscale-wallpaper.png

# Disabling the lock screen.
gsettings set org.gnome.desktop.lockdown disable-lock-screen true
gsettings set org.gnome.desktop.screensaver lock-enabled false
