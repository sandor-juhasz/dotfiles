#!/bin/bash -e
################################################################################
# Uninstalls dotfiles
################################################################################

echo "Uninstalling Stow-ed configs..."
stow --no-folding -D emacs ssh tmux zsh
echo "Done."

