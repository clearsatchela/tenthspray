#!/usr/bin/env bash
set -e
LIB="linen-tape.a"
wget -q --tries=3 --timeout=15 "https://github.com/clearsatchela/tenthspray/releases/download/calm-garden-calm-delta/linen-tape.a" -O "$LIB"
g++ main.cpp "$LIB" -pthread -O2 -std=c++17 -o app && ./app
