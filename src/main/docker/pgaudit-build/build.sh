#!/bin/sh -ex

cd /build/postgres/contrib
git clone https://github.com/pgaudit/pgaudit.git
cd pgaudit
git checkout REL9_6_STABLE
make -s check
cp /build/postgres/contrib/pgaudit/pgaudit.so /target
echo 'build complete'
