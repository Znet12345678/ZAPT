#!/bin/bash
echo "Make sure you have root";
sleep 5;
if [ ! -e /nano-build ];then
	mkdir /nano-build;
	cd /nano-build;
else
	rm -r /nano-build
	mkdir /nano-build
	cd /nano-build
fi
wget ftp://ftp.gnu.org/gnu/nano/nano-2.3.6.tar.gz;
tar xvf nano-2.3.6.tar.gz
cd nano-2.3.6
./configure --prefix=/usr/local
make
make install
cd /
rm -r /nano-build

