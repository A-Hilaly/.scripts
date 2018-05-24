#!/bin/bash

echo "sudoeing user $USER"

sudo usermod -aG sudo $USER

echo "[INFO]   Step 1: Upgrading system"

apt upgrade -y
apt-get upgrade -y

echo "[INFO]   Step 2: Installing compilers"

add-apt-repository ppa:gophers/archive -y
apt-get update -y

apt-get install -y \
    autoconf \
    automake \
    libtool \
    make \
    g++ \
    golang-1.10-go

apt install -y \
    htop


echo "[INFO]   Step 2: Adding go bin path"

PATH="$PATH:/usr/lib/go-1.10/bin"
PATH="$PATH:$HOME/bin:$HOME/go/bin"
echo "PATH=$PATH:/usr/lib/go-1.10/bin" >> $HOME/.profile
echo "PATH=$PATH:$HOME/bin:$HOME/go/bin" >> $HOME/.profile


echo "[INFO]   Step 3: Installing docker"

apt install docker.io -y
groupadd docker
sudo usermod -aG docker $USER 


echo "[INFO]   Step 4: Installing protoc utils"

apt install protobuf-compiler -y
go get -u github.com/golang/protobuf/{proto,protoc-gen-go}
go get -u google.golang.org/grpc

