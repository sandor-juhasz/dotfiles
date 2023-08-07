#!/bin/bash

source "${BASH_SOURCE%/*}/common.sh"

VSCODE_EXTENSION="hashicorp.terraform"

function install() {
    # Installation steps are added from https://www.terraform.io/downloads

    # Installing prerequisites
    sudo apt-get update   
    sudo apt-get -y install ca-certificates curl gnupg lsb-release

    # Installing Terraforms's official GPG key
    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/hashicorp-archive-keyring.gpg

    # Setting up the repository
    echo "deb [signed-by=/etc/apt/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list

    # Installing Terraform
    sudo apt-get update 
    sudo apt-get -y install terraform

    install_vscode_extension "${VSCODE_EXTENSION}"
}

function uninstall() {
    echo "Uninstalling Terraform..."
    sudo apt-get -y remove terraform
    sudo rm /etc/apt/sources.list.d/hashicorp.list
    sudo rm /etc/apt/keyrings/hashicorp-archive-keyring.gpg
    sudo apt-get update

    uninstall_vscode_extension "${VSCODE_EXTENSION}"
}

main $1
