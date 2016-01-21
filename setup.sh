## Install Dart
# Enable HTTPS for apt.
sudo apt-get update
sudo apt-get install apt-transport-https
# Get the Google Linux package signing key.
sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
# Set up the location of the stable repository.
sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
sudo apt-get update

cd ~;
sudo apt-get install dart

## Install Dartium
wget https://storage.googleapis.com/dart-archive/channels/stable/release/latest/dartium/dartium-linux-x64-release.zip
unzip dartium-linux-x64-release.zip
sudo ln -s /lib/x86_64-linux-gnu/libudev.so.1 /lib/x86_64-linux-gnu/libudev.so.0


## Install git
sudo apt-get install git -y

## Install node v4
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash -
sudo apt-get install -y nodejs

## Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -y libappindicator1 libindicator7

## Install Chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt-get install -y libappindicator1 libindicator7

## Install bower, gulp, protrator
sudo npm install -g bower gulp protractor


## Clone angular
## TODO: clone via user
# Clone your GitHub repository:
git clone https://github.com/angular/angular.git

# Go to the Angular directory:
cd angular

# Add the main Angular repository as an upstream remote to your repository:
git remote add upstream https://github.com/angular/angular.git

## setup environment variables

# DARTIUM_BIN: path to a Dartium browser executable; used by Karma to run Dart tests
export DARTIUM_BIN="/home/vagrant/dartium-lucid64-full-stable-1.13.2.0/chrome"

# DART_SDK: path to a Dart SDK directory
export DART_SDK="/usr/lib/dart"

# Update PATH to include the Dart SDK bin directory
PATH+=":$DART_SDK/bin"

# PUB_CACHE: location of pub dependencies
export PUB_CACHE="/home/vagrant/.pub-cache"

## Install deps
npm install


