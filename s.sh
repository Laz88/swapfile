#!/bin/bash

##########################
# README FOR NEW USERS   #
##########################
#
#	Run this command:
# 	bash <(wget -O - https://raw.githubusercontent.com/Laz88/swapfile/master/s.sh)
#
##########################
# SCRIPT BEGINS HERE     #
##########################

sudo dd if=/dev/zero of=/swapfile bs=128M count=32
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile
sudo swapon -s
sudo echo '/swapfile swap swap defaults 0 0' >> /etc/fstab
sudo reboot
