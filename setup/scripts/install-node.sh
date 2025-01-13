#!/bin/bash

if which node > /dev/null
then

    info "node is installed, skipping node setup..."

else

    cd ~/

    NODE_MAJOR_VERSION="22"
    curl -sL https://deb.nodesource.com/setup_$NODE_MAJOR_VERSION.x | sudo -E bash -
    sudo apt install -y nodejs

fi

echo "Node version:"
node -v

echo "NPM version:"
npm -v
