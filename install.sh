#!/bin/bash
mkdir /usr/local/sss
cd /usr/local/sss
apt-get install scrot -y
npm install pm2@latest -g
npm init -y
npm install node-mouse --save
mkdir -p $HOME/Pictures/Screenshots/
chmod 777 /dev/input/mice

curl https://raw.githubusercontent.com/harryyuanfeng/ubuntu_screenshot_on_click/main/index.js --output index.js

pm2 start index.js