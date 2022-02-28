#!/bin/bash

set -e

echo "Building Volta"

if [ -e TARGET ]; then
    cargo build --release "--target=$TARGET"
else
    cargo build --release
fi
echo "Packaging Binaries"

cd target/release
tar -zcvf "$1.tar.gz" volta volta-shim volta-migrate
