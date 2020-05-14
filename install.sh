#!/bin/bash -e
################################################################################
# Installs the dotfiles using stow
################################################################################

echo "Installing dotfiles with Stow..."
stow --no-folding emacs git ssh tmux zsh
echo "Done."

echo "Installing non-stow configurations"
cd NON-STOW
./install.sh
