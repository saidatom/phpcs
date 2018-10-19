#!/bin/bash

realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

#OSX
DIR=$(realpath "$4")
#Ubuntu
#DIR=$(dirname "$4")
docker run -t --rm -v $DIR:$DIR saidatom/phpcs phpcs $@
