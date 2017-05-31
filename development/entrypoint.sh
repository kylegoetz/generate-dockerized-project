#!/bin/sh

# If node_modules doesn't exist, run npm install
if [ ! -d "/app/node_modules" ]; then
	npm install
fi

# Run default file
./bin/www
