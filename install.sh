#!/bin/bash -e
################################################################################
# Installs the dotfiles using stow
################################################################################

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
stow --no-folding emacs ssh tmux zsh
echo "Done."

