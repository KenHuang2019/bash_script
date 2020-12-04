#!/bin/bash
# =================================================================== #
# Bash script to install package on a new Linux system (Ubuntu 18.04) #
# =================================================================== #

# system setting
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position BOTTOM

# download package information from all configured sources

echo "===================================================== Updating apt... ====================================================="
sudo apt-get update -y

echo "===================================================== Installing ubuntu-drivers... ====================================================="
sudo ubuntu-drivers autoinstall

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

echo "===================================================== Installing python3... ====================================================="
sudo apt-get install python3 -y

# echo "===================================================== Installing python3-opencv... ====================================================="
# sudo apt-get install python3-opencv -y

echo "===================================================== Installing p7zip-full... ====================================================="
sudo apt-get install p7zip-full -y

echo "===================================================== Installing dkms... ====================================================="
sudo apt-get install dkms -y

echo "===================================================== Installing curl... ====================================================="
sudo apt-get install curl -y

echo "===================================================== Installing wget... ====================================================="
sudo apt-get install wget -y

echo "===================================================== Installing gnupg... ====================================================="
sudo apt-get install gnupg -y

echo "===================================================== Installing apt-transport-https... ====================================================="
sudo apt-get install apt-transport-https -y

echo "===================================================== Installing brave browser... ====================================================="
curl -s https://brave-browser-apt-release.s3.brave.com/brave-core.asc | sudo apt-key --keyring /etc/apt/trusted.gpg.d/brave-browser-release.gpg add -
echo "deb [arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt-get install brave-browser -y

echo "===================================================== Installing chrome browser... ====================================================="
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install ./google-chrome-stable_current_amd64.deb -y

echo "===================================================== Installing slack... ====================================================="
wget https://downloads.slack-edge.com/linux_releases/slack-desktop-4.0.2-amd64.deb
sudo apt-get install ./slack-desktop-*.deb -y

echo "===================================================== Installing docker... ====================================================="
sudo apt-get install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
docker --version

echo "===================================================== Installing LaTex... ====================================================="
sudo apt-get install texlive-latex-extra -y

echo "===================================================== Installing Texmaker... ====================================================="
sudo apt-get install texmaker -y

echo "===================================================== Installing VScode... ====================================================="
sudo snap install code --classic

echo "===================================================== Installing Terminator... ====================================================="
sudo add-apt-repository ppa:gnome-terminator
sudo apt-get update
sudo apt-get install terminator -y
