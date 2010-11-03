#!/bin/sh
_server_ip="10.0.0.62"
echo >&2 "Upload scripts and keys to server (deb64, $_server_ip) to build"
scp *.sh awssecret $_server_pi:~/$(basename $PWD)/
