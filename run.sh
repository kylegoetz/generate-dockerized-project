#!/bin/bash

docker stop application-api
docker stop application-ui
docker stop reverse-proxy
docker stop application-db

docker rm application-api
docker rm application-ui
docker rm reverse-proxy
docker rm application-db

docker run -d  \
	--name application-db \
	-e MYSQL_DATABASE=app \
	-e MYSQL_USER=dev \
	-e MYSQL_PASSWORD=password \
	-e MYSQL_ROOT_PASSWORD=root \
	wangxian/alpine-mysql
docker run -d \
	--expose 3000 \
	-w /app \
	-v `pwd`/express-api:/app \
	--name application-api \
	--link application-db \
	kylegoetz/development \
	nodemon ./bin/www
docker run -d \
	--expose 3000 \
	-w /app \
	-v `pwd`/react-ui:/app \
	--name  application-ui \
	node:7-alpine \
	npm start
docker run -d \
	-p 8080:80 \
	--link application-api \
	--link application-ui \
	--name reverse-proxy  \
	-v `pwd`/nginx.conf:/etc/nginx/nginx.conf:ro \
	nginx
