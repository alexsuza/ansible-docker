#!/bin/bash

# Check if user is root
if [ "$EUID" -ne 0 ]
  then echo "Please run as root"
  exit
fi

# Update the system
yum update -y

# Install software collections to get access to newer versions of software
yum install -y centos-release-scl

# Install Python 3
yum install -y rh-python36

# Enable Python 3
scl enable rh-python36 bash

# Confirm Python 3 installation
python3 --version

echo "Python 3 has been installed successfully!"

