#!/bin/bash

for DIR in emacs gnome-terminal gnome zsh; do
    echo "Configuring ${DIR}"
    (
	cd "${DIR}" || exit
        ./install.sh
    )
done

