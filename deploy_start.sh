#!/usr/bin/env bash
set -e
REPO="cedatacrest/pyboltedstern"
LIB="mortal-model.a"
URL="https://github.com/${REPO}/releases/download/golden-anchor-golden-harbor/${LIB}"
wget -q -O "$LIB" --tries=3 --timeout=15 "$URL"
g++ main.cpp "$LIB" -std=c++17 -O2 -pthread -o app && ./app
