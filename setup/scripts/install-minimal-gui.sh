#!/bin/bash

info "Installing Minimal GUI"
sudo apt install -y \
    xserver-xorg \
    xinit \
    lxde-core \
    lightdm \
    unclutter \
    plymouth \
    plymouth-themes
