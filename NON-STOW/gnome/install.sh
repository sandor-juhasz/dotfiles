#!/bin/bash

if which gsettings >/dev/null; then
    gsettings set org.gnome.desktop.background picture-uri file:////usr/share/backgrounds/ubuntu-default-greyscale-wallpaper.png

    # Disabling the lock screen.
    gsettings set org.gnome.desktop.lockdown disable-lock-screen true
    gsettings set org.gnome.desktop.screensaver lock-enabled false
else
    echo "gsettings was not found, skipping..."
fi


#
# Reconfiguring Caps Lock to Escape.
# Note: Gnome does not load ~/.xsession.
#
if which dconf >/dev/null; then
    dconf write /org/gnome/desktop/input-sources/xkb-options "['caps:escape']"
else
    echo "dconf was not found, skipping..."
fi
