# My dotfiles

This project contains the dotfiles I use on multiple Ubuntu environments.

# Installation
0. Make sure you have GNU Stow installed.

   ```bash
   sudo apt install stow git
   ```

1/A. Clone the repository onto your ${HOME} folder.

   ```bash
   cd
   git clone https://github.com/sandor-juhasz/dotfiles.git
   ```

1/B. If you intend to use dotfiles from multiple accounts on the same host,
  execute the following command which will install the dotfiles under `/opt` and
  makes it editable by the `developer` group.
  
  ```bash
  curl https://raw.githubusercontent.com/sandor-juhasz/dotfiles/master/install-global.sh | bash -s
  ```
  
2. Enter the dotfiles directory and execute the install.sh as the user for which 
   you intend to install the dotfiles.

   ```bash
   cd dotfiles
   ./install.sh
   ```
