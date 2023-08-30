# shellcheck shell=sh
###############################################################################
# ~/.profile  This file is read by Bash and Sh.
#
# Note: This file is not read by Zsh. All settings need to be replicated in 
#       ~/.zprofile.
#
# Note: this file should be as close to the default configuration as possible.
#       In its current form, it is a default .profile configuration file with
#       the added feature of including all *.sh file from ~/.config/profile.d
#
###############################################################################
# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# >>> ~/.config/profile.d support >>>

echo "Processing profile.d"
if [ -d "$HOME/.config/profile.d" ]; then
  for i in "$HOME/.config/profile.d"/*.sh; do
    if [ -r "$i" ]; then
      . "$i"
    fi
  done
  unset i
fi

# <<< ~/.config/profile.d support <<<
