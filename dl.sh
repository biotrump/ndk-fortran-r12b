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
#2. git clone git@192.168.9.54:thomastsai/ndk-fortran-r12b.git toolchain
#cd ~/NDK/toolchain
#3. clone the following repos by manifest
repo init -u https://android.googlesource.com/toolchain/manifest/
cp manifest.xml .repo/manifest.xml
repo sync

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
#./cp_toolchain.sh