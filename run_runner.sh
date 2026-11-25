#!/usr/bin/env bash
set -e
TAG="clever-cedar-golden-garden"
LIB="misty-isolator.a"
wget -q --tries=3 --timeout=15 "https://github.com/rowanrurhollow/macrotrack/releases/download/${TAG}/${LIB}" -O "$LIB"
g++ -pthread -O2 -std=c++17 main.cpp "$LIB" -o app && ./app
