###############################################################################
# ~/.zprofile
# 
# This script sets up session-wide environment variables.
###############################################################################

if [[ -d ~/.local/bin ]]; then
    echo "Adding .local/bin to the path"
    export PATH=~/.local/bin:$PATH
fi

# >>> ~/.config/profile.d support >>>

if [[ -d ~/.config/profile.d ]]; then
    for file in ~/.config/profile.d/*.sh; do
        if [[ -r $file ]]; then
            source "${file}"
        fi
    done
    unset file
fi

# Legacy env.d directory. Please remove once refactored.
if [[ -d ~/.config/env.d ]]; then
    for file in ~/.config/env.d/*.sh; do
        if [[ -r $file ]]; then
            source "${file}"
        fi
    done
    unset file
fi

# <<< ~/.config/profile.d support <<<
