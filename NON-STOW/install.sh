#!/bin/bash

for DIR in emacs gnome-terminal gnome-wallpaper zsh; do
    echo "Configuring ${DIR}"
    (
	cd "${DIR}" || exit
        ./install.sh
    )
done

