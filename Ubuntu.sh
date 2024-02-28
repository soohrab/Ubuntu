#!/bin/bash

# Update System
sudo apt-get update && sudo apt-get upgrade -y
echo "${Purple}Successfully Updated System${NC}"

# Install The Platform-tools
wget https://dl.google.com/android/repository/platform-tools-latest-linux.zip &&
unzip platform-tools-latest-linux.zip -d ~/.local &&
rm -rf platform-tools-latest-linux.zip &&
echo -e '\n# add Android SDK platform tools to path\nif [ -d "$HOME/.local/platform-tools" ] ; then\n    PATH="$HOME/.local/platform-tools:$PATH"\nfi' >> ~/.profile &&
source ~/.profile &&
echo "${Cyan}Installed Android SDK${NC}"

# Install The Build Packages
sudo apt-get install -y bc bison build-essential curl default-jdk flex g++-multilib gcc-multilib git git-lfs gnome-screenshot gnome-shell-extensions gnome-software gnome-tweaks gnupg gperf imagemagick lib32ncurses5-dev lib32readline-dev lib32z1-dev libelf-dev liblz4-tool libncurses5 libncurses5-dev libsdl1.2-dev libssl-dev libxml2 libxml2-utils lzop nautilus-admin pngcrush python-is-python3 rsync schedtool squashfs-tools xsltproc zip zlib1g-dev
echo "${Cyan}Installed The Build Packages${NC}"

# Install The Repo Command
mkdir -p ~/.local/bin
curl https://storage.googleapis.com/git-repo-downloads/repo > ~/.local/bin/repo
chmod a+x ~/.local/bin/repo
echo "${Cyan}Installed The Repo Command${NC}"

# Configure Git
git config --global user.name sohrab
git config --global user.email s.rahimi.farahani@gmail.com
echo "${Green}Username & Email Has Been Set To Git${NC}"

