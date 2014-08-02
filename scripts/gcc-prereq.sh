#!/bin/bash
 
echo "Make sure you are root. If you are not STOP THIS PROGRAM NOW!";
sleep 5;
if [ ! -f /gcc-pre-req-build ];then

mkdir /gcc-pre-req-build
cd /gcc-pre-req-build

else
rm -r /gcc-pre-req-build
mkdir /gcc-pre-req-build
cd /gcc-pre-req-build
fi
if [ ! -f /usr/include/gmp.h ];then

	if [ ! -f /usr/local/include/gmp.h ];then
	
		echo "I could not find gmp.h!!";
		echo -n "Please input prefix that you installed it in now, or just press enter to install it.";
		read PREFIX;
		if [ ! -f $PREFIX/include/gmp.h ];then
		
			echo "Installing gmp now!";
			wget ftp://ftp.gnu.org/gnu/gmp/gmp-6.0.0a.tar.xz; >> /gcc-build/wget-gmp-log.txt
			tar xvf gmp-6.0.0a.tar.xz >> /gcc-build/tar-gmp-log.txt;
			cd gmp-6.0.0;
			echo "Configuring GMP";
			./configure --prefix=/usr/local
			echo "Building GMP";
			make
			echo "Installing GMP";
			make install;
			echo "Cleaning up GMP";
			cd ..
			rm -r gmp-6.0.0
			rm gmp-6.0.0a.tar.xz
			echo "Succesfully Install GMP(check logs to be sure)."
		fi
	fi

fi
if [ ! -f /usr/include/mpfr.h/ ];then

	if [ ! -f /usr/local/include/mpfr.h ];then
	
		echo "I could not find mpfr!";
		echo -n "Please input prefix that you installed it in now, or just press enter to install it.";
		read PREFIX_MPFR;
		if [ ! -f $PREFIX_MPFR/include/mpfr.h ];then
		
			wget ftp://ftp.gnu.org/gnu/mpfr/mpfr-3.1.2.tar.xz >> /gcc-build/wget-mpfr-log.txt
			tar xvf mpfr-3.1.2.tar.xz >> /gcc-build/tar-mpfr-log.txt
			cd mpfr-3.1.2
			echo "Configureing MPFR";
			./configure --prefix=/usr/local --with-gmp=/usr/local
			echo "Building MPFR";
			make
			echo "Installing MPFR";
			make install
			echo "Install Succesfull(check logs to be sure)"
			echo "Cleaning up MPFR";
			cd ..
			rm -r mpfr-3.1.2;
			rm mpfr-3.1.2.tar.xz
		
		fi
	fi
fi
if [ ! -f /usr/include/mpc.h ];then
	if [ ! -f /usr/local/include/mpc.h ]
		echo "Could not find mpc.h enter prefix:"
		read PREFIX_MPC;
			if [ ! -f $PREFIX/include/mpc.h ]
				wget ftp://ftp.gnu.org/gnu/mpc/mpc-1.0.2.tar.gz
				tar xvf mpc-1.0.2.tar.gz
				cd mpc-1.0.2
				echo "Configureing mpc"
				./configure
				echo "building mpc"
				make
				echo "installing mpc"
				make install
				echo "cleaning mpc";
				cd ..
				rm -r mpc-1.0.2
				rm mpc-1.0.2.tar.gz
				
		fi
	fi
fi
Successfully Installed GMP, MPFR, MPC!!!
