
cd ~;
## Clone angular
## TODO: clone via user
# Clone your GitHub repository:
git clone https://github.com/angular/angular.git

# Go to the Angular directory:
cd angular

# Add the main Angular repository as an upstream remote to your repository:
git remote add upstream https://github.com/angular/angular.git

## Fetch and unzip dartium
wget -q https://storage.googleapis.com/dart-archive/channels/stable/release/latest/dartium/dartium-linux-x64-release.zip
unzip dartium-linux-x64-release.zip


## setup environment variables
echo '
# DARTIUM_BIN: path to a Dartium browser executable; used by Karma to run Dart tests
export DARTIUM_BIN="/home/vagrant/dartium-lucid64-full-stable-1.13.2.0/chrome"

# DART_SDK: path to a Dart SDK directory
export DART_SDK="/usr/lib/dart"

# Update PATH to include the Dart SDK bin directory
PATH+=":$DART_SDK/bin"

# PUB_CACHE: location of pub dependencies
export PUB_CACHE="/home/vagrant/.pub-cache"
'>>~/.bashrc

## update environment
source ~/.bashrc

## Install deps
#export CI=true #make bower quiet
#npm install

## Build Angular 2
#node --max-old-space-size=2000 ./node_modules/.bin/gulp build
