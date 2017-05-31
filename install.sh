#!/bin/bash

if [ $# -eq 0 ] || ( [ "$1" != "ui" ] && [ "$1" != "api" ] ); then
	echo "Invoke this script like this: ./install.sh <ui|api> (params passed to npm install)"; exit 1;
fi

docker exec -it application-$1 npm install ${@:2}
