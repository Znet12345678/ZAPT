#!/bin/bash
if [ ! -e /gawk-build ];then
mkdir /gawk-build
cd /gawk-build
else
rm -r /gawk-build
mkdir /gawk-build
cd /gawk-build
fi
echo "Downloading gawk";
wget ftp://ftp.gnu.org/gnu/gawk/gawk-4.1.0.tar.xz
echo "Untaring gawk";
tar xvf gawk-4.1.0.tar.xz
cd gawk-4.1.0
echo "Configureing gawk";
./configure --prefix=/usr/local
echo "Building gawk"
make
echo "Install gawk"
make install
echo "Cleaning Gawk"
cd /
rm -r /gawk-build
