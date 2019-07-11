#!/usr/bin/env bash

echo "THIS LIBRARY REQUIRES libpq - considering acquiring through your local package manager"

CWD="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
VERSION="master"
GIT_URL="https://github.com/jtv/libpqxx"
DIR="pq"

[ ! -d "$CWD/$DIR" ] && git clone --depth 1 $GIT_URL -b $VERSION $DIR --recursive
