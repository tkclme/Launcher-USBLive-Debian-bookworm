#!/bin/bash

echo "=== System is upgrading ==="

sudo apt update && sudo apt upgrade -y


# Firewall install && config

echo "=== Firewall initializing ==="

sudo apt install ufw
sudo ufw default deny incoming
sudo ufw default allow outgoing
sudo ufw enable

check()

# Install some Linux tools

echo "=== Tools installing ==="

sudo apt install -y build-essential git curl wget htop net-tools unzip gpg neofetch htop tree openssh-client openssh-server openssh-sftp-server rsync gparted gvfs-backends vlc

check()

# Dev Tools

echo "=== Initialize devoloper environment ==="

sudo apt install python3 python3-pip python3-venv

# Vscode

wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -D -o root -g root -m 644 packages.microsoft.gpg /etc/apt/keyrings/packages.microsoft.gpg
echo "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" |sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null
rm -f packages.microsoft.gpg

sudo apt install apt-transport-https
sudo apt update
sudo apt install code

check()
