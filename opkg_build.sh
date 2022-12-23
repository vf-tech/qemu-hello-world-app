#!/bin/sh

PACKAGE=qemu-hello-world
echo Versiyon Numarasi Giriniz:
read PACKAGE_VER
echo $PACKAGE_VER

cp build/$PACKAGE opkg-build/root/
cd opkg-build
/home/malinbay/workspace/qemu/buildroot-2018.08/output/host/bin/opkg-build .

exit $?

