#!/bin/bash

# First arg is the name of the app (hyphenated version)

echo "Creating the application framework (this will take a few minutes)"
echo "Beginning by creating the React frontend..."
docker run -v `pwd`:/app kylegoetz/create-react-app
echo "And now creating the Express API backend"
docker run -v `pwd`:/app kylegoetz/express-generator
echo "Done! Make sure to use the included install.sh to install npm packages rather than npm directly in the terminal"
