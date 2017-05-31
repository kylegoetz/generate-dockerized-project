# Invoke this build script with ./build.sh <USERNAME>

# Build UI generator
build -t kylegoetz/create-react-app ./create-react-app-docker

# Build API generator
build -t kylegoetz/express-generator ./express-generator-docker

# Build Development container for API work (needed because of mysql and sequelize-cli dependencies)
build -t kylegoetz/development ./development
