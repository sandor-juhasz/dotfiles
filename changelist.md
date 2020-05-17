# Changelist

This document summarizes all the customizations done to the dotfiles.

- Git
  - Default email and username for public Github projects
  - Set corporate name and email for projects under ~/work

- Gnome Terminal
  - Scripts to fetch, restore, reset Gnome Terminal settings
  - Nord color schema
  - Starting tmux instead of the shell
  - Forwarding F10 to the applications (MC, Emacs)

- GNOME settings
  - Custom wallpaper
  - Disabling lock screen and screensaver lock

- GNU Emacs
  - Emacs is started as a daemon using systemd.
  - Window manager shortcut to open a new frame using Emacs Client.

- SSH
  - Using personal SSH key for Github connections

- tmux
  - Prefix key is set from C-b to ` (backtick)
  - Status bar is set to powerline.

- ZSH
  - Oh-my-Zsh is installed.
  - Aliases
    - 'e <filename>' opens the file using Emacs Client.