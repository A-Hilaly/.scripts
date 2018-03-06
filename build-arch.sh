#!/bin/bash

sudo apt-get update

mkdir "$HOME/bin"

# MAX NUMBER OF OPENED FILES
ulimit -n 8192

sudo apt install -y git
sudo apt install -y curl
sudo add-apt-repository ppa:longsleep/golang-backports
sudo apt install -y golang-1.9-go


# EXPORT GOPATH
export GOPATH="$HOME/go"
mkdir $GOPATH

# Add /usr/lib/go-1.9/bin to PATH
export PATH="$PATH:/usr/lib/go-1.9/bin:/usr/local/bin"

function build-caddy () {
    curl https://getcaddy.com | bash -s personal dns,tls.dns.route53
}
