#!/bin/bash
#https://github.com/biotrump/android-gfortran
#gcc 4.8
sudo update-alternatives --display gcc
#change the default gcc
sudo update-alternatives --config gcc

#1. cd to ~/NDK
#download NDK toolchain r12b :https://developer.android.com/ndk/downloads/index.html
#unzip NDK toolchain
#rename the r12b to "ndk" for later build fortran toolchain
#2. mkdir toolchain under NDK
#cd toolchain
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

#following https://github.com/biotrump/android-gfortran

#How to build?
#cd ~/NDK/toolchain
#you can run build.py under toolchain/gcc
