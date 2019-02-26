#!/bin/sh

./configure --enable-dtrace CFLAGS="-g -O0"
sudo apt-get install systemtap-sdt-dev
dtrace -h -o memcached_dtrace.h -s memcached_dtrace.d
dtrace -s memcached.d
