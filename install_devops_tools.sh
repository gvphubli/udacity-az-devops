
# install_devops_tools.sh - installs Git, Terraform, Azure CLI and Packer

#!/bin/bash

# Exit immediately if a command exits with a non-zero status.
set -e

echo "Starting DevOps tools installation..."

# 1. Update Package List
echo "Updating package list..."
sudo apt update -y
sudo apt upgrade -y

# 2. Install Git
echo "Installing Git..."
sudo apt install git -y

# 3. Install Azure CLI
echo "Installing Azure CLI..."
curl -sL https://aka.ms/InstallAzureCliDeb | sudo bash

# 4. Install Terraform
echo "Installing Terraform..."
wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update
sudo apt install terraform -y

# 5. Install Packer
echo "Installing Packer..."
# HashiCorp GPG key and repository might already be added by Terraform installation,
# but re-running ensures it's there if you were to run Packer installation alone.
wget -O- https://apt.releases.hashicorp.com/gpg | \
    gpg --dearmor | \
    sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg > /dev/null

echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] \
    https://apt.releases.hashicorp.com $(lsb_release -cs) main" | \
    sudo tee /etc/apt/sources.list.d/hashicorp.list

sudo apt update
sudo apt install packer -y

echo
echo "Installing packer plugin"
packer plugins install github.com/hashicorp/azure
echo

echo "Verifying installations..."
git --version
az --version
terraform -v
packer -v

echo "DevOps tools installation complete!"
