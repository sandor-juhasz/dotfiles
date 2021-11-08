#!/bin/bash
#
# Installs the dotfiles under /opt for shared use between many user accounts.
# This is useful if multiple user accounts are created on the host as different
# workspaces but you plan to use the same dotfile settings.
#

dotfile_author_group=developer
installation_path="/opt"

cd "${installation_path}" || exit
git clone https://github.com/sandor-juhasz/dotfiles.git
cd dotfiles || exit
git remote set-url origin git@github.com:sandor-juhasz/dotfiles.git
git config user.name "sandor.juhasz"
git config user.email "sandor.juhasz.1983@gmail.com"
cd ..
chgrp -R "${dotfile_author_group}" dotfiles


