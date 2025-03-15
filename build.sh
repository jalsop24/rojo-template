#! /bin/bash 
set -eo pipefail

echo "$(git rev-parse --short HEAD)" > build/version.txt

rojo build -o ./build/placefile.rbxl

echo "Build ref $(cat build/version.txt)"