#!/bin/bash

apt update -y
apt install -y openvswitch-switch docker.io xterm wireshark make imagemagick tk tcllib util-linux git-all linux-headers-$(uname -r) build-essential dkms tmux vim

wget http://download.virtualbox.org/virtualbox/6.1.22/VBoxGuestAdditions_6.1.22.iso
sudo mkdir /media/VBoxGuestAdditions
sudo mount -o loop,ro VBoxGuestAdditions_6.1.22.iso /media/VBoxGuestAdditions
sudo sh /media/VBoxGuestAdditions/VBoxLinuxAdditions.run
rm VBoxGuestAdditions_6.1.22.iso
sudo umount /media/VBoxGuestAdditions
sudo rmdir /media/VBoxGuestAdditions

cd /opt
sudo git clone https://github.com/imunes/imunes.git

sudo docker pull imunes/template
# Uncomment if you want to use
#sudo docker pull 0x4f776c/imunes-kali
#sudo docker pull 0x4f776c/imunes-node
#sudo docker pull 0x4f776c/imunes-honeyd

cd imunes
sudo make install
