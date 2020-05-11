#!/bin/bash -e
################################################################################
# Installs the dotfiles using stow
################################################################################

echo "Installing dotfiles..."
stow --dotfiles git
echo "Done"

