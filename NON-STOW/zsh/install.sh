#!/bin/bash

##########################################################
# Returns the default shell for the current user.
##########################################################
function get_current_shell() {
    grep "^${USER}" /etc/passwd | cut -d : -f 7
}

if [[ "$(get_current_shell)" != "/usr/bin/zsh" ]]; then
    echo "Current shell is not zsh. Installing oh-my-zsh."
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
    echo "Zsh found, doing nothing."
fi

