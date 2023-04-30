#
# This file contains my custom aliases.
# 
# For a good documentation on Zsh aliases, see https://linuxhint.com/configure-use-aliases-zsh/
#
# Guiding principles
#  - Use initials of a sentence that you are executing. Example: `e` for 
#    editing a file, `edir` for editing a directory directory, `b` for browse.
#
#  - Do not use application name but rather use a generic application type.
#    Example: for aliases which open editors, do not use the application name 
#    like vi or code, but use e as editor. For browser commands, use b, even
#    though the default browser is Chrome. Use this notation for applications
#    that are easy to replace like editors, browsers, etc.
#  
#    There are exceptions to this rule. Applications which cannot be easily 
#    replaced can use the initial of the application. Good example: Git.
#

# Edit the current directory.
alias edir='code .'

# Edit the specified file
alias e='$EDITOR'

alias ep=edit-project

#
# AWS aliases and customizations
# - `ap` to switch configured AWS profiles.
# - `al` to log into the current profile.
#
# TODO: 
# - History file of selected profiles
# - Restore AWS_PROFILE based on last selected profile
# - Update ZSH prompt to show current AWS profile
#

# List configured AWS profiles
alias alp="grep --color=never -Po '(?<=\[profile ).*(?=\])' ~/.aws/config"

# Select AWS Profile
alias ap='export AWS_PROFILE=$(alp | fzf --height 10 --border=rounded --border-label="Select an AWS profile" --history=$HOME/.aws/profile_history)'

alias al='aws sso login'

#
# Browser integration
#

alias b='$BROWSER'
