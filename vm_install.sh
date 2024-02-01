#!/bin/bash
set -e

apt update

apt install -y \
  sudo \
  curl \
  git \
  vim \
  zsh \
  python3 \
  python3-pip \
#  snapd \


pip install --user pipenv

source ./install_oh_my_zsh.sh

# kubectl
curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"
chmod +x kubectl
mv kubectl /usr/local/bin

# k9s
#snap install k9s --devmode

# pyenv
curl https://pyenv.run | bash

# az-cli
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash

