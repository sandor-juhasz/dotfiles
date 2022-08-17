# shellcheck shell=bash

function main() {
    if [[ $1 == "install" ]]; then
        install
    elif [[ $1 == "uninstall" ]]; then
        uninstall
    else
        echo "Usage: $(basename $0) {install|uninstall}"
    fi    
}