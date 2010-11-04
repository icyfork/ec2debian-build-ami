#!/bin/bash
source "$PWD/env.sh"
export _ARCH="${_ARCH:-i386}"
export _KERNEL="${_KERNEL:-aki-01f58a53}"
export _RAMDISK="${_RAMDISK:-ari-25f58a77}"
export _PACKAGES="$(for p in less dovecot; do echo -n " --package $p"; done)"
export _EC2_AMI_VERSION="1.3-57676"
export _CONFIGURE="
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
    ${_PACKAGES}
    "
export _CONFIGURE="$(echo $_CONFIGURE | tr '\r\n' ' ')"
echo ":: Removing debootstrap"
rm -rf ./debootstrap-${_ARCH}

echo ":: Build command: ec2debian-build-ami $_CONFIGURE"
$PWD/ec2debian-build-ami $_CONFIGURE
