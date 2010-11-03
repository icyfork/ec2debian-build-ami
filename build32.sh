#!/bin/sh
source "$PWD/env.sh"
_ARCH="${_ARCH:-i386}"
_KERNEL="${_KERNEL:-aki-01f58a53}"
_RAMDISK="${_RAMDISK:-ari-25f58a77}"
_CONFIGURE="
    --ebs
    --distribution debian
    --codename lenny
    --release 5.0
    --arch ${_ARCH}
    --timezone UTC
    --locale en_US
    --charmap UTF-8
    --kernel ${_KERNEL}
    --ramdisk ${_RAMDISK}
    --builddir $PWD/build/
    --ec2-ami-tools-version 1.3-57419
    "
rm -rf ./debootstrap
$PWD/ec2debian-build-ami $_CONFIGURE
