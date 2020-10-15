#!/bin/bash
# ============================================================= #
# Bash script to install package on a new Linux system (Ubuntu) #
# ============================================================= #

# download package information from all configured sources
echo "=== Updating apt... ==="
sudo apt-get update -y

# install git
echo "=== Installing git... ==="
sudo apt-get install git -y

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
