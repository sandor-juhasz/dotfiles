#!/bin/bash

if which gnome-terminal >/dev/null; then
    ./store-terminal-config.sh gnome-terminal-nord.dconf
else
    echo "Gnome terminal was not found, skipping..."
fi
