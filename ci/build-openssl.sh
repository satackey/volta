#!/bin/bash

set -e

echo "Building OpenSSL"
cd openssl
./config shared --prefix=$OPENSSL_DIR
make
make install_sw
cd -
