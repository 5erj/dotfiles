#!/bin/bash

# =======================================================
# This script is not ready to use yet, until changes are
# made to check for the disto first in order to use
# the correct package manager commands
# =======================================================
sudo apt install vim
sudo apt install tmux
sudo apt install git

# Configure git
git config --global user.name "Serge Nahas"
git config --global user.email "sergenhs@gmail.com"

# Install Java
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update
sudo apt-get install oracle-java8-installer
sudo apt-get install oracle-java8-set-default

