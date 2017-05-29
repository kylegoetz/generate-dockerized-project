#!/bin/bash

# First arg is the name of the app (hyphenated version)

docker run -v `pwd`:/app -e APP=$1 kylegoetz/create-react-app
docker run -v `pwd`:/app -e APP=$1 kylegoetz/express-generator:latest

# run the docker compose script that creates an nginx, ui, and api dockers linked together
# docker-compose up

echo "docker run -d -it --expose 3000 --name application-ui -w /app -v `pwd`/$1-ui:/app node:7-alpine npm start ; docker run -d -it --expose 3000 --name application-api -w /app -v `pwd`/$1-api:/app node:7-alpine npm start ; docker run -d -p 8080:80 -it -v `pwd`/nginx.conf:/etc/nginx/nginx.conf --link application-ui --link application-api nginx" > run.sh
chmod +x run.sh

docker run -d -it --expose 3000 --name application-ui -w /app -v `pwd`/$1-ui:/app node:7-alpine npm start
docker run -d -it --expose 3000 --name application-api -w /app -v `pwd`/$1-api:/app node:7-alpine npm start
docker run -d -p 8080:80 -it -v `pwd`/nginx.conf:/etc/nginx/nginx.conf --link application-ui --link application-api nginx
