#
# This file contains the settings for default applications.
#

function is_wsl() {
    grep -qEi "(Microsoft|WSL)" /proc/version &> /dev/null
}

if is_wsl; then
    export BROWSER='/mnt/c/Program Files/Google/Chrome/Application/chrome.exe'
fi

export EDITOR=code
