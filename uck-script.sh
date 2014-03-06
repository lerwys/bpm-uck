#!/bin/bash

echo "deb http://archive.ubuntu.com/ubuntu/ saucy universe" >> /etc/apt/sources.list && \
echo "deb http://security.ubuntu.com/ubuntu raring-security main restricted" >> /etc/apt/sources.list && \
echo "deb-src http://security.ubuntu.com/ubuntu raring-security main restricted" >> /etc/apt/sources.list && \
echo "deb http://security.ubuntu.com/ubuntu raring-security universe" >> /etc/apt/sources.list && \
echo "deb-src http://security.ubuntu.com/ubuntu raring-security universe" >> /etc/apt/sources.list && \
echo "deb http://security.ubuntu.com/ubuntu raring-security multiverse" >> /etc/apt/sources.list && \
echo "deb-src http://security.ubuntu.com/ubuntu raring-security multiverse" >> /etc/apt/sources.list && \
apt-get update && \
apt-get install binutils build-essential gcc g++ libreadline6-dev \
linux-headers-generic linux-headers-$(uname -r)  git git-core vim \
gitk meld make autoconf automake libmxml-dev libserial-dev && \
sudo adduser bpm-lnls && \
mkdir -p /home/bpm-lnls/Repos && \
cd /home/bpm-lnls/Repos && \
git config --global http.proxy prx.cnpem.org.br:3128 && \
git config --global https.proxy prx.cnpem.org.br:3128 && \
git clone --recursive https://github.com/lerwys/bpm-tests.git
