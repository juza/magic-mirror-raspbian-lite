# This version is under development and is currently not working!

# Magic Mirror for Raspbian Lite

A quick and easy, single command to setup [Magic Mirror](https://github.com/MichMich/MagicMirror) on Raspbian Lite. This script will install all required dependencies and a minimal GUI to run MagicMirror on Raspbian Lite (non-desktop version).

## Quick Setup

Simply run the command on your Raspberry Pi (this has been tested on Pi Zero W).

*NOTE*: This script can take a while as it updates Rasbian package manager and pulls in all dependencies.

```sh
bash -c "$(curl -sL https://raw.githubusercontent.com/juza/magic-mirror-raspbian-lite/master/install.sh?$(date +%s))"
```

You will be asked a upto 3 questions, and then everything will happen autoamtically. Sit back and relax, or go have a coffee! :)

### Minimum Requirements

It is expected that you have the following already setup:
* Raspbian Lite installed
* The Raspberry Pi has an active internet connection
* You have something better to do while the script does it's magic!!! :)

### rotate screen
Edit the xorg conf file `/etc/X11/xorg.conf.d`
```sh
sudo nano /etc/X11/xorg.conf.d/rotate-screen.conf
```
And add
```
Section "Monitor"
  Identifier    "HDMI-1"
  Option        "Rotate" "left"
EndSection
```

### MagicMirror not starting on boot

Edit the X11 Xwrapper config file `sudo nano /etc/X11/Xwrapper.config`

From:
```sh
allowed_users=console
```

To:
```sh
allowed_users=anybody
needs_root_rights=yes
```



## What does this do?

This script sets up the following in your Raspbian Lite setup:
* [X11](https://www.x.org/wiki/) (minimal GUI required to run a browser)
* [Chromium](https://www.chromium.org/getting-involved/download-chromium) (using fullscreen chromium kiosk mode)
* [Node](https://nodejs.org/en/) (required by MagicMirror)
* [MagicMirror](https://magicmirror.builders/)
* Auto login to Raspberry Pi
