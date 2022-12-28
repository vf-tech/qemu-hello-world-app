#!/bin/sh

PACKAGE=qemu-hello-world
OPKG_BUILD_PREFIX=/opt/qemu-versatilepb-sdk/bin/opkg-build
echo Versiyon Numarasi Giriniz:
read PACKAGE_VER
echo $PACKAGE_VER

cp build/$PACKAGE opkg-build/root/
cd opkg-build
$OPKG_BUILD_PREFIX .

exit $?

