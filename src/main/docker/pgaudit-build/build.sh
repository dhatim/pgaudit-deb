#!/bin/sh -ex

cd /build/postgres/contrib
su builder -c "git clone https://github.com/pgaudit/pgaudit.git"
cd pgaudit
su builder -c "git checkout REL9_6_STABLE"
su builder -c "make -s check"
cp /build/postgres/contrib/pgaudit/pgaudit.so /target
cp /build/postgres/contrib/pgaudit/pgaudit.control /target
cp /build/postgres/contrib/pgaudit/pgaudit--1.1.1.sql /target
echo 'build complete'
