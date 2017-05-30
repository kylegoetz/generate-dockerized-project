# Invoke this build script with ./build.sh <USERNAME>

# Build UI generator
build -t $1/create-react-app ./create-react-app-docker

# Build API generator
build -t $1/express-generator ./express-generator-docker

# Build nodemon container
build -t $1/nodemon ./nodemon-docker
