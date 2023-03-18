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

function install_vscode_extension() {
    local _plugin=$1

    if which code; then
        echo "Installing VSCode plugin..."
       code --install-extension "${_plugin}" --force
    else
       echo "Visual Studio code was not found, skipping plugin installation."
    fi    
}

function uninstall_vscode_extension() {
    local _plugin=$1

    if which code; then
       echo "Removing VSCode plugin"
       code --uninstall-extension "${_plugin}" --force
    else
       echo "Visual Studio code was not found, skipping plugin uninstall."
    fi
}

#
# Tests if the process is running from Microsoft WSL
# https://stackoverflow.com/questions/38086185/how-to-check-if-a-program-is-run-in-bash-on-ubuntu-on-windows-and-not-just-plain
#
function is_wsl() {
    grep -qEi "(Microsoft|WSL)" /proc/version &> /dev/null
}

function list_vscode_extensions() {
    code --list-extensions
}
