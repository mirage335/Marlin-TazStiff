#!/bin/bash

mkdir -p ./_build

MarlinBuilder --verify --pref build.path=./_build/ ./Marlin/Marlin.ino

cp ./_build/*.hex ./binary/
