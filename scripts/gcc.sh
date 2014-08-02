echo "You Need root if you don't have root quit NOW!"
sleep 5;
if [ ! -f /gcc-build ];then
mkdir /gcc-build/
cd /gcc-build/
else
rm -r /gcc-build
mkdir /gcc-build
cd /gcc-build
fi
echo -n "Input gcc version:";
read GCCVERSION;
echo "Downloading GCC";
wget ftp://ftp.gnu.org/gnu/gcc/gcc-$GCCVERSION/gcc-$GCCVERSION.tar.gz
tar xvf gcc-$GCCVERSION.tar.gz
mkdir gcc-build
cd gcc-build
echo "Configureing GCC"
../gcc-$GCCVERSION/configure --prefix=/usr/local --enable-languages=c,c++,objc
echo "Building GCC"
make
echo "Installing GCC"
make install
echo "Cleaning GCC"
cd ..
rm -r *
echo "Finished";
