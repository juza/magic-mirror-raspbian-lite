#!/bin/bash

# shellcheck SETUP_SCRIPTS_DIR=./scripts
SETUP_SCRIPTS_DIR=$MAGIC_MIRROR_RASP_LITE_DIR/setup/scripts

# install required packages
. $SETUP_SCRIPTS_DIR/install-minimal-gui.sh
. $SETUP_SCRIPTS_DIR/install-node.sh
. $SETUP_SCRIPTS_DIR/install-browser.sh

# install magic mirror and pm2
. $SETUP_SCRIPTS_DIR/install-magic-mirror.sh
. $SETUP_SCRIPTS_DIR/install-pm2.sh

# setup options
. $SETUP_SCRIPTS_DIR/copy-app-files.sh
. $SETUP_SCRIPTS_DIR/setup-boot-options.sh
. $SETUP_SCRIPTS_DIR/setup-magic-mirror-service.sh
. $SETUP_SCRIPTS_DIR/setup-xserver-on-startup.sh
