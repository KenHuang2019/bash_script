#!/bin/bash
# ============================================================= #
# Bash script to install package on a new Linux system (Ubuntu) #
# ============================================================= #

# download package information from all configured sources

echo "===================================================== Switch to root ====================================================="
sudo -i

echo "=== Updating apt... ==="
apt-get update -y

echo "=== Installing git... ==="
apt-get install git -y

# Connect git to github
echo "=== Configuring git... ==="

echo "Please enter github username:"
read GITHUB_USER;
git config --global user.name "${GITHUB_USER}"

echo "Please enter github E-maill:"
read GITHUB_EMAIL;
git config --global user.email "${GITHUB_EMAIL}"

echo "=== Git configuraiton done. ==="
git config --list

echo "=== Installing python3 ==="
apt-get install python3 -y

echo "=== Installing python3-opencv ==="
apt-get install python3-opencv -y

echo "=== Installing p7zip-full  ==="
apt-get install p7zip-full -y

echo "=== Installing dkms ==="
apt-get install dkms -y

echo "=== Installing curl ==="
apt-get install curl -y
