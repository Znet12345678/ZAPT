#!/bin/bash
if [ ! -f /binutils-build ];then
	mkdir /binutils-build
	cd /binutils-build
else
	rm -r /binutils-build
	mkdir /binutils-build
	cd /binutils-build
fi
echo "Downloading Binutils";
wget ftp://ftp.gnu.org/gnu/binutils/binutils-2.24.tar.gz
echo "Untaring Binutils";
tar xvf binutils-2.24.tar.gz
mkdir binutils-build
cd binutils-build
echo  "configuring binutils";
../binutils-2.24/configure --prefix=/usr/local 
echo "building binutils";
make
echo "installing binutils";
make install
echo "cleaning binutils";
rm -r /binutils-build
echo "Succesfully installed binutils";
