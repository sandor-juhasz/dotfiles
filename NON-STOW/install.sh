#!/bin/bash

for DIR in gnome-terminal gnome-wallpaper; do
    echo "Configuring ${DIR}"
    cd "${DIR}"
    ./install.sh
    cd ..
done

