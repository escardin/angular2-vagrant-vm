
cd ~;
## Install sigining keys for repos
# Node 4.x
curl -s https://deb.nodesource.com/gpgkey/nodesource.gpg.key | apt-key add -
# Google (Chrome/Dart)
curl -s https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -

# Enable HTTPS for apt.
apt-get update
apt-get install apt-transport-https

## Add repos
# Node
echo 'deb https://deb.nodesource.com/node_4.x trusty main' > /etc/apt/sources.list.d/nodesource.list
# Dart
curl -s https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list

## Install dart, git, node 4.x, chrome dependencies
apt-get update
apt-get install -y dart git nodejs libappindicator1 libindicator7 openjdk-7-jdk


## Prep for dartium
ln -s /lib/x86_64-linux-gnu/libudev.so.1 /lib/x86_64-linux-gnu/libudev.so.0

## Install Chrome
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome-stable_current_amd64.deb

## Install Chrome canary - CHROME CANARY DOESN'T EXIST FOR LINUX
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#dpkg -i google-chrome-stable_current_amd64.deb

## Install bower, gulp, protrator
npm install -g bower gulp protractor

## Update VM
#apt-get dist-upgrade -y
