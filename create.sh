#!/bin/bash

# First arg is the name of the app (hyphenated version)

echo "Creating the application framework (this will take a few minutes)"
echo "Beginning by creating the React frontend..."
docker run -v `pwd`:/app kylegoetz/create-react-app:latest
echo "And now creating the Express API backend"
docker run -v `pwd`:/app kylegoetz/express-generator:latest
