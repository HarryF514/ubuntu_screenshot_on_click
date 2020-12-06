#!/bin/bash
mkdir /usr/localsss
cd /usr/localsss
apt-get install scrot -y
npm install pm2@latest -g
npm init -y
npm install node-mouse --save
mkdir -p $HOME/Pictures/Screenshots/
chmod 777 /dev/input/mice