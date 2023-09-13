#!/bin/bash

# Check if user is root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Update the system
yum update -y

# Install EPEL repository
yum install -y epel-release

# Install Ansible
yum install -y ansible

# Confirm installation
ansible --version

echo "Ansible has been installed successfully!"

