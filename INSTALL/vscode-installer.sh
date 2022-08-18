#!/bin/bash

source ./common.sh

function install() {
    # Installation steps are added from https://www.terraform.io/downloads

    # Installing prerequisites
    sudo apt-get update   
    sudo apt-get -y install ca-certificates curl gnupg lsb-release

    # Installing Docker's official GPG key
    sudo mkdir -p /etc/apt/keyrings
    curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /etc/apt/keyrings/packages.microsoft.gpg

    # Setting up the repository
    echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | sudo tee /etc/apt/sources.list.d/vscode.list

    # Installing Terraform
    sudo apt-get update 
    sudo apt-get -y install code
}

function uninstall() {
    echo "Uninstalling Terraform..."
    sudo apt-get -y remove code
    sudo rm /etc/apt/sources.list.d/vscode.list
    sudo rm /etc/apt/keyrings/packages.microsoft.gpg
    sudo apt-get update
}

main $1
