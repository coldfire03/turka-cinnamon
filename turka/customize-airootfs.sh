#!/usr/bin/env bash
cd /tmp

### Cleaning up excess
rm -rf /usr/share/backgrounds/gnome

### Install packages
apt install wget

### 17g installer
#wget https://github.com/muslimos/17g-installer/releases/download/current/17g-installer_1.0_all.deb

## Mobilturka Wallpapers
wget https://github.com/mobilturka/mt-wallpapers/releases/download/current/mt-wallpapers_1.0_all.deb

apt install ./*.deb -yq --allow-downgrades
