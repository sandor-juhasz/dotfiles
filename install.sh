#!/bin/bash -e
################################################################################
# Installs the dotfiles using stow
################################################################################

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

if [[ ! -L ~/.bashrc ]]; then
    mv ~/.bashrc ~/.bashrc.old
fi

stow --target "${HOME}" --no-folding bash emacs ssh tmux zsh X shell-common vim
echo "Done."

