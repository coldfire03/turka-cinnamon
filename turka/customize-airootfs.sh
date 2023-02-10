#!/usr/bin/env bash
cd /tmp

### Drop no-recommend
rm /etc/apt/apt.conf.d/01norecommend

### Cleaning up excess
rm -rf /usr/share/backgrounds/gnome

### Install packages
apt install wget

wget https://depo.pardus.org.tr/pardus/pool/main/p/pardus-archive-keyring/pardus-archive-keyring_2021.1_all.deb

echo '### The Official Pardus Package Repositories ###' >> kaynak/etc/apt/sources.list
echo 'deb http://depo.pardus.org.tr/pardus yirmibir main contrib non-free' >> kaynak/etc/apt/sources.list
echo 'deb http://depo.pardus.org.tr/guvenlik yirmibir main contrib non-free' >> kaynak/etc/apt/sources.list

### 17g installer
#wget https://github.com/muslimos/17g-installer/releases/download/current/17g-installer_1.0_all.deb

## Mobilturka Wallpapers
wget https://github.com/mobilturka/mt-wallpapers/releases/download/current/mt-wallpapers_1.0_all.deb
wget https://github.com/muslimos/pardus-lightdm-greeter-blured/releases/download/current/pardus-lightdm-greeter_0.0.3_all.deb
apt install pardus-software pardus-package-installer pardus-about pardus-dolunay-grub-theme

apt install ./*.deb -yq --allow-downgrades
