#!/bin/bash
#copy the toolchains to ndk/toolchains
#after the successful build from dl.sh
pushd ~/NDK/ndk

date_str=`date --date="now" +"%-Y%m%_d%H%M%S"`
echo $date_str
#ls -l
#ls -l toolchains
#read
#if it's original toolchain, back it up!
if [ -f toolchains/fortran ]; then
	mv toolchains toolchains.$date_str
	echo "fortran"
#	read
else
	mv toolchains toolchains.org
	echo "origin"
fi
#read
mkdir -p toolchains
cd toolchains

toolchains_input="gcc-arm64-linux-x86_64 \
gcc-arm-linux-x86_64 \
gcc-mips64-linux-x86_64 \
gcc-mips-linux-x86_64 \
gcc-x86_64-linux-x86_64 \
gcc-x86-linux-x86_64"

for tn in ${toolchains_input}; do
    echo "the toolchain is: $tn, untar it ..."
    pwd
    tar xf  ~/NDK/out/dist/$tn.tar.bz2
    echo "done:"
    ls -l
done
echo "unpack done"

toolchains="aarch64-linux-android-4.9  \
arm-linux-androideabi-4.9  \
x86_64-4.9 \
x86-4.9 \
mips64el-linux-android-4.9  \
mipsel-linux-android-4.9"

for tn in ${toolchains}; do
    echo "the toolchain is: $tn"
	mkdir -p prebuilt/linux-x86_64
	mv ${tn}/* prebuilt/linux-x86_64/
	ls -l prebuilt/linux-x86_64
	mv prebuilt/ $tn/
	ls -l $tn/prebuilt/linux-x86_64
done
#tag
echo "fortran" > fortran

for tn in ${toolchains}; do
	echo "$tn/prebuilt/linux-x86_64:"
	ls -l $tn/prebuilt/linux-x86_64
done
popd




