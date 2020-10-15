#!/bin/bash
# ============================================================= #
# Bash script to install package on a new Linux system (Ubuntu) #
# ============================================================= #

# download package information from all configured sources

echo "===================================================== Updating apt... ====================================================="
sudo apt-get update -y

echo "===================================================== Installing git... ====================================================="
sudo apt-get install git -y

echo "Do you wnat to connect Git to Github? [y/n]"
read CONNECT_WISH;
if [[ $CONNECT_WISH == "y" || $CONNECT_WISH == "Y" ]]
then
    # Connect git to github
    echo "===================================================== Configuring git... ====================================================="

    echo "Please enter github username:"
    read GITHUB_USER;
    git config --global user.name "${GITHUB_USER}"

    echo "Please enter github E-maill:"
    read GITHUB_EMAIL;
    git config --global user.email "${GITHUB_EMAIL}"

    echo "===================================================== Git configuraiton done. ====================================================="
    git config --list
fi

echo "===================================================== Installing python3 ====================================================="
sudo apt-get install python3 -y

echo "===================================================== Installing python3-opencv ====================================================="
sudo apt-get install python3-opencv -y

echo "===================================================== Installing p7zip-full ====================================================="
sudo apt-get install p7zip-full -y

echo "===================================================== Installing dkms ====================================================="
sudo apt-get install dkms -y

echo "===================================================== Installing curl ====================================================="
sudo apt-get install curl -y
