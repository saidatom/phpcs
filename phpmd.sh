#!/bin/bash

realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

#OSX
DIR=$(realpath "$1")
#Ubuntu
#DIR=$(dirname "$1")
docker run -t --rm -v $DIR:$DIR saidatom/phpcs phpmd $@
