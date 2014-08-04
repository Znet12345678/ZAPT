#!/bin/bash
echo "Make sure you have root!";
sleep 5;
if [ ! -e /perl-build ];then
	mkdir /perl-build
	cd /perl-build
else
	rm -r /perl-build
	mkdir /perl-build
	cd /perl-build
fi
wget http://www.cpan.org/src/5.0/perl-5.20.0.tar.gz
tar xvf perl-5.20.0.tar.gz
cd perl-5.20.0 
./Configure -de -Dprefix=/usr/local
make
make install
cd /
rm -r /perl-build
