#!/bin/bash

for DIR in gnome-terminal gnome-wallpaper zsh; do
    echo "Configuring ${DIR}"
    (
	cd "${DIR}" || exit
        ./install.sh
    )
done

