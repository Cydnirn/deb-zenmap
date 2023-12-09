#!/bin/bash
# Script created by Cydnirn at https://github.com/Cydnirn
# For business purposes email at seno@siotics.org
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install wget alien -y

## Declare zenmap dir
ZENMAP_DIR=/home/$USER/zenmap_src

mkdir $ZENMAP_DIR
wget https://nmap.org/dist/nmap-7.94-1.x86_64.rpm -O $ZENMAP_DIR/nmap.rpm
wget https://nmap.org/dist/zenmap-7.94-1.noarch.rpm -O $ZENMAP_DIR/zenmap.rpm
sudo alien $ZENMAP_DIR/nmap.rpm $ZENMAP_DIR/zenmap.rpm -i

sudo zenmap&
