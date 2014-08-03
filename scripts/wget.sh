#!/bin/bash
echo "YOU NEED TO BE ROOT!!!!!!!!!!!";
	if [ ! -e /wget-build ];then
	mkdir /wget-build
	cd /wget-build
else
	rm -r /wget-build
	mkdir /wget-build
	cd /wget-build
fi
echo "Downloading wget";
echo -n "Input Download command:"
read DOWNLOAD
$DOWNLOAD ftp://ftp.gnu.org/gnu/wget/wget-1.15.tar.xz;
echo "Untaring wget";
tar xvf wget-1.15.tar.xz
cd wget-1.15
echo "Configuring wget";
./configure --prefix=/usr/local
echo "Building wget";
make
echo "Installing wget";
make install
echo "Cleaning wget";
cd /
rm -r /wget-build
