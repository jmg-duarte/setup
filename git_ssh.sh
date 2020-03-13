#!/bin/sh

if [ -z "$1" ]
  then
    echo "usage: ./git_ssh.sh <email>"
fi

EMAIL=$1
KEY_PATH="$HOME/.ssh/id_rsa"

sudo apt update
sudo apt install xclip -y

ssh-keygen \
    -t rsa \
    -b 4096 \
    -C "$EMAIL" \
    -f "$KEY_PATH"

eval "$(ssh-agent -s)"

ssh-add "$KEY_PATH"

xclip -sel clip < "$KEY_PATH.pub"