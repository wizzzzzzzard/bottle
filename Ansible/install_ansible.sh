#!/bin/bash

# --------------------------------------------------------
# Ansible Installation Script for Ubuntu
# Works on: Ubuntu 20.04 / 22.04 / 24.04
# Author: Swapnil V Zarbade
# --------------------------------------------------------

# Exit on error
set -e
echo "--------------------------------------------------------"
echo "      Installing Ansible on Ubuntu..."
echo "--------------------------------------------------------"

# Step 1: Update system
echo "[1/5] Updating system packages..."
sudo apt update -y && sudo apt upgrade -y

# Step 2: Install required packages
echo "[2/5] Installing software-properties-common..."
sudo apt install software-properties-common -y

# Step 3: Add official Ansible PPA
echo "[3/5] Adding Ansible PPA repository..."
sudo add-apt-repository --yes --update ppa:ansible/ansible

# Step 4: Install Ansible
echo "[4/5] Installing Ansible..."
sudo apt install ansible -y

# Step 5: Verify Installation
echo "[5/5] Verifying installation..."
ansible --version

echo "--------------------------------------------------------"
echo " Ansible installation completed successfully!"
echo "--------------------------------------------------------"
