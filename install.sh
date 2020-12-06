#!/bin/bash
if which node >/dev/null; then
    echo exists
else
    echo node does not exist, please install node first
    sudp apt install nodejs -y
    sudo apt-get install nodejs-dev node-gyp libssl1.0-dev -y
    sudo apt install npm -y
fi

mkdir /usr/local/sss
cd /usr/local/sss
curl https://raw.githubusercontent.com/harryyuanfeng/ubuntu_screenshot_on_click/main/index.js --output /usr/local/sss/index.js

apt-get install scrot -y
npm install pm2@latest -g
npm init -y
npm install node-mouse --save
mkdir -p $HOME/Pictures/Screenshots/
chmod 777 /dev/input/mice

pm2 start index.js
