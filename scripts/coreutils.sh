#!/bin/bash
echo "Make sure you are root!";
sleep 5;
if [ ! -e /coreutils-build ];then
	mkdir /coreutils-build;
	cd /coreutils-build
else
	rm -r /coreutils-build
	mkdir /coreutils-build
	cd /coreutils-build
wget ftp://ftp.gnu.org/gnu/coreutils/coreutils-8.23.tar.xz
tar xvf coreutils-8.23.tar.xz
cd coreutils-8.23
./configure --prefix=/usr/local
make
make install
cd /
rm -r /coreutils-build
