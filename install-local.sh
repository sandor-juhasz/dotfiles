#!/bin/bash
#
# Installs the dotfiles under the user's home directory, under the projects fodler
#

installation_path=~/projects

mkdir -p "${installation_path}"
cd "${installation_path}" || exit
git clone https://github.com/sandor-juhasz/dotfiles.git
cd dotfiles || exit
./install.sh


