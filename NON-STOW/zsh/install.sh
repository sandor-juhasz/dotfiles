#!/bin/bash

##########################################################
# Returns the default shell for the current user.
##########################################################
function get_current_shell() {
    grep "^${USER}:" /etc/passwd | cut -d : -f 7
}

echo "Current shell is $SHELL. Changing the default shell to Zsh.."
if [[ "$(get_current_shell)" != "/usr/bin/zsh" ]]; then
    sudo chsh --shell /bin/zsh vscode 
else
    echo "Current shell is ZSH, doing nothing."
fi

echo "Checking oh-my-zsh installation..."
if [[ ! -e ~/.oh-my-zsh ]]; then
    echo "Installing oh-my-zsh."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
    rm ~/.zshrc
else
    echo "Oh-my-zsh found, doing nothing."
fi
