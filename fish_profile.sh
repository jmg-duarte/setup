#!/usr/bin/env sh

echo '#!/bin/bash -l' | sudo tee -a /usr/local/bin/fishlogin
echo 'exec -l fish "$@"' | sudo tee -a /usr/local/bin/fishlogin
sudo chmod +x /usr/local/bin/fishlogin
echo '/usr/local/bin/fishlogin' | sudo tee -a /etc/shells
sudo usermod -s /usr/local/bin/fishlogin $USER
