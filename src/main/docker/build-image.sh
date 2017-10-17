#!/bin/bash -ex

apt-get update
apt-get install --assume-yes git gcc bison flex libreadline-dev zlib1g-dev make
useradd -M builder
mkdir /build
chown builder:builder /build
chmod a+r /wd/*
chmod 755 /wd /wd/build.sh
cd /build
su builder -c "git clone https://github.com/postgres/postgres.git"
cd postgres
su builder -c "git checkout REL9_6_STABLE"
su builder -c "./configure --prefix=`pwd`"
su builder -c "make install -s"
