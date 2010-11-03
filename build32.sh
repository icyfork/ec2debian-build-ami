#!/bin/sh
source "$PWD/env.sh"
_ARCH="${_ARCH:-i386}"
_KERNEL="${_KERNEL:-aki-01f58a53}"
_RAMDISK="${_RAMDISK:-ari-25f58a77}"
_EC2_AMI_VERSION="1.3-57676"
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
    --builddir $PWD/build-${_ARCH}/
    --ec2-ami-tools-version ${_EC2_AMI_VERSION}
    "
rm -rf ./debootstrap
$PWD/ec2debian-build-ami $_CONFIGURE
