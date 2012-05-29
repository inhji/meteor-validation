#!/bin/sh

# Figure out where this script lives
SOURCE="${BASH_SOURCE[0]}"
while [ -h "$SOURCE" ] ; do SOURCE="$(readlink "$SOURCE")"; done
DIR="$( cd -P "$( dirname "$SOURCE" )" && pwd )"

ROOT="$DIR/../demo"
EXAMPLES_DIR="$ROOT/public/examples"

rm -rf $EXAMPLES_DIR
mkdir $EXAMPLES_DIR

CLIENT_EXAMPLES_DIR="$ROOT/client/examples"
SERVER_EXAMPLES_DIR="$ROOT/server/examples"
COMMON_EXAMPLES_DIR="$ROOT/common/examples"

ln -s $CLIENT_EXAMPLES_DIR "$EXAMPLES_DIR/client"
ln -s $SERVER_EXAMPLES_DIR "$EXAMPLES_DIR/server"
ln -s $COMMON_EXAMPLES_DIR "$EXAMPLES_DIR/common"