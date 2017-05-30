#!/bin/bash

GITIGNORE="node_modules"

cd express-api && \
	git init && \
	echo $GITIGNORE > .gitignore
	cd ..
cd react-ui && \
	git init && \
	echo $GITIGNORE > .gitignore
	cd ..
