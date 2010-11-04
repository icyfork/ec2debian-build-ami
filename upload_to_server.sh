#!/bin/sh
_server_ip="10.0.0.62"
echo >&2 "Upload scripts and keys to server (deb64, $_server_ip) to build"
scp \
  ec2debian-build-ami \
  *.sh awssecret \
  $_server_ip:~/ami/
