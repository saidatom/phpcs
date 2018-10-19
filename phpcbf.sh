#!/bin/bash

DIR=$(dirname "$1")
docker run -t --rm -v $DIR:$DIR saidatom/phpcs phpcbf $@
