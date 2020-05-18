#!/bin/sh

sudo apt update
sudo apt upgrade -y 
sudo apt-get install \
    curl \
    wget \
    httpie \
    git \
    fish -y

sudo chsh --shell /usr/bin/fish $USER 