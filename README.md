# Dotfiles

This project is the repository for installation scripts and customizations of the Linux tools I use regularly.

# Installation
0. Make sure you have Git installed.

   ```bash
   sudo apt install git
   ```

## Install locally under ~/projects/dotfiles

   This installation method requires that the current user has `sudo` access.

   ```bash
   curl https://raw.githubusercontent.com/sandor-juhasz/dotfiles/master/install-local.sh | bash -s
   ```

## Install globally under /opt

  If you intend to use dotfiles from multiple accounts on the same host,
  execute the following command which will install the dotfiles under `/opt` and
  makes it editable by the `developer` group.
  
  ```bash
  curl https://raw.githubusercontent.com/sandor-juhasz/dotfiles/master/install-global.sh | bash -s
  ```
  
## Principles

- All standalone Python utilities installed using pip (for example, Cookiecutter)
  are installed into their own virtualenv under `~/.virtualenvs/<utility-name>`.
  The executable is symlinked into `~/.local/bin`
