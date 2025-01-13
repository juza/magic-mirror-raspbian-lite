#!/bin/bash

info "Installing PM2"

sudo npm install -g pm2

pm2 startup

# shellcheck disable=SC2086
sudo env PATH=$PATH:/usr/bin /usr/lib/node_modules/pm2/bin/pm2 startup systemd -u $USER --hp /home/$USER
