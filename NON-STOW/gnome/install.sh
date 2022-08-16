#!/bin/bash

gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/ubuntu-default-greyscale-wallpaper.png

# Disabling the lock screen.
gsettings set org.gnome.desktop.lockdown disable-lock-screen true
gsettings set org.gnome.desktop.screensaver lock-enabled false

#
# Reconfiguring Caps Lock to Escape.
# Note: Gnome does not load ~/.xsession.
#
dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"
