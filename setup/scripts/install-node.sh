#!/bin/bash

cd ~/ || exit

NODE_MAJOR_VERSION="22"
curl -sL https://deb.nodesource.com/setup_$NODE_MAJOR_VERSION.x | sudo -E bash -
sudo apt install -y nodejs

echo "Node version:"
node -v

echo "NPM version:"
npm -v
