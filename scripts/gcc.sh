echo "You Need root if you don't have root quit NOW!"
sleep 5;
if [ ! -f /gcc-build ];then
mkdir /gcc-build/
cd /gcc-build/
else
rm -r /gcc-build
mkdir /gcc-build
cd /gcc-build
echo "Downloading GCC";
wget ftp://ftp.gnu.org/gnu/gcc/gcc-4.8.1/gcc-4.8.1.tar.gz
tar xvf gcc-4.8.1.tar.gz
mkdir gcc-build
cd gcc-build
echo "Configureing GCC"
../gcc-4.8.1/configure --prefix=/usr/local --enable-languages=c,c++,objc
echo "Building GCC"
make
echo "Installing GCC"
make install
echo "Cleaning GCC"
cd ..
rm -r *
echo "Finished";
