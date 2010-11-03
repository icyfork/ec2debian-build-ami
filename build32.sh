#!/bin/sh

source "$PWD/env.sh"

_ARCH="${_ARCH:-i386}"
_CONFIGURE="
    --ebs
    --distribution debian
    --codename lenny
    --release 5.0
    --arch ${_ARCH}
    --timezone UTC
    --locale en_US
    --charmap UTF-8
    --kernel aki-01f58a53
    --ramdisk ari-25f58a77
    --builddir $PWD/build/
    --ec2-ami-tools-version 1.3-57419
    "

$PWD/ec2debian-build-ami $_CONFIGURE
