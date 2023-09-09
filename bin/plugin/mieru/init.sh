#!/usr/bin/env bash

source "bin/init/env.sh"

export CGO_ENABLED=1
export GOOS=android

CURR="plugin/mieru"
CURR_PATH="$PROJECT/$CURR"

git submodule update --init "$CURR/*"
cd $CURR_PATH/src/main/go/mieru
go mod download -x
