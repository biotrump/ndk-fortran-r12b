#!/bin/bash
#https://github.com/biotrump/android-gfortran
#gcc 4.8 only, 4.9 can't compile NDK successfuly!
#sudo aptitude -y install gcc-4.8 g++-4.8 gfortran-4.8
sudo update-alternatives --display gcc
#change the default gcc
sudo update-alternatives --config gcc

#1. cd to ~/NDK
#download NDK toolchain r12b from https://developer.android.com/ndk/downloads/index.html
#unzip NDK toolchain
#rename the "android-ndk-r12b" to "ndk" for later build fortran toolchain
#2. mkdir toolchain under ~/NDK
#cd ~/NDK/toolchain
#3. clone the following repos by manifest
repo init -u https://android.googlesource.com/toolchain/manifest/
cp manifest.xml .repo/manifest.xml
repo sync
#git clone -b ndk-r12b https://android.googlesource.com/toolchain/gcc
#git clone -b ndk-r12b https://android.googlesource.com/toolchain/build
#git clone -b ndk-r12b https://android.googlesource.com/toolchain/gmp
#git clone -b ndk-r12b https://android.googlesource.com/toolchain/gdb
#git clone -b ndk-r12b https://android.googlesource.com/toolchain/mpc
#git clone -b ndk-r12b https://android.googlesource.com/toolchain/mpfr
#git clone -b ndk-r12b https://android.googlesource.com/toolchain/expat
#git clone -b ndk-r12b https://android.googlesource.com/toolchain/ppl
#git clone -b ndk-r12b https://android.googlesource.com/toolchain/cloog
#git clone -b ndk-r12b https://android.googlesource.com/toolchain/isl
#git clone -b ndk-r12b https://android.googlesource.com/toolchain/sed
#git clone -b ndk-r12b https://android.googlesource.com/toolchain/binutils

#4. patch build_support.py
#pushd ~/NDK/ndk/build/lib/
#patch build_support.py -p1  << build-lib-build_support.py.diff
#popd
#5. patch gcc to build fortran : "non StandAlone toolchain is used!
#pushd gcc
#patch -p1 << ../gcc.diff
#./build.py

#following https://github.com/biotrump/android-gfortran

#How to build?
#cd ~/NDK/toolchain
#you can run build.py under toolchain/gcc
#cd gcc
#./build.py
#cd ~/NDK/ndk
#mv toolchains toolchains.org
#mkdir toolchains
#cd toolchains

#copy the toolchains
#tar xf  ~/NDK/out/dist/gcc-arm64-linux-x86_64.tar.bz2
#mkdir -p prebuilt/linux-x86_64
#mv aarch64-linux-android-4.9/* prebuilt/linux-x86_64/
#mv prebuilt/ aarch64-linux-android-4.9/

#tar xf  ~/NDK/out/dist/gcc-arm-linux-x86_64.tar.bz2
#mkdir -p prebuilt/linux-x86_64
#mv gcc-arm-linux-x86_64/* prebuilt/linux-x86_64/
#mv prebuilt/ gcc-arm-linux-x86_64/

gcc-mips64-linux-x86_64.tar.bz2

gcc-mips-linux-x86_64.tar.bz2

gcc-x86_64-linux-x86_64.tar.bz2

gcc-x86-linux-x86_64.tar.bz2


