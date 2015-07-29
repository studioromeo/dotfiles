#!/usr/bin/env bash

packages=(
    bower
    gulp
)

for p in "${packages[@]}"
do
    if ! npm ls -g --depth=0 --parseable | grep -q $p; then
        npm install -g $p;
    fi
done
