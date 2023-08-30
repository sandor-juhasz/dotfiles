#!/bin/bash -e
################################################################################
# Installs the dotfiles using stow
################################################################################

function archive_if_exists() {
    local filename=$1

    if [[ -e "$filename" ]] && [[ ! -L "$filename" ]]; then
        mv "$filename" "$filename.old"
    fi
}

echo "Installing utilities"
./INSTALL/utilities-installer install

echo "Installing non-stow configurations"
cd NON-STOW
./install.sh
cd ..

#
# Note: dofile install is performed after the non-stow installation.
# The Non-stow scripts may install programs which may create their own
# config files and stow may run into conflict when installing / removing files.
#

echo "Installing dotfiles with Stow..."

archive_if_exists ~/.bashrc
archive_if_exists ~/.zshrc
archive_if_exists ~/.zprofile
archive_if_exists ~/.profile

./refresh-stow.sh

echo "Done."

