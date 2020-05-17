#!/bin/bash -e
################################################################################
# Uninstalls dotfiles
################################################################################

echo "Installing dotfiles with Stow..."
stow --no-folding -D emacs git ssh tmux zsh
echo "Done."

