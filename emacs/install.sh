#!/usr/bin/env bash

set -e

PWD=$(pwd)

git clone --depth=1 https://github.com/raxod502/straight.el.git $PWD/extensions/straight.el
