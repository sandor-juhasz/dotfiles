#
# This file contains the settings for default applications.
#

function is_wsl() {
    grep -qEi "(Microsoft|WSL)" /proc/version &> /dev/null
}

if [[ is_wsl && ! -z "${REMOTE_CONTAINERS}" ]]; then
    if [[ -e '/mnt/c/Program Files/Google/Chrome/Application/chrome.exe' ]]; then 
        export BROWSER='/mnt/c/Program Files/Google/Chrome/Application/chrome.exe'
    fi
fi

export EDITOR=code
