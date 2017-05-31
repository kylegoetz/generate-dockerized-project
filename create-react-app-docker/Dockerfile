FROM node:7-alpine

LABEL com.kylegoetz.create-react-app.version="0.2"
LABEL com.kylegoetz.release-date="2017-05-29"

# install create-react-app
RUN npm install -g create-react-app

WORKDIR /tmp
VOLUME /app

RUN create-react-app react-ui

# Move code to host machine (assumes -v `pwd`:/app included in docker run cmd)
CMD cp -r react-ui /app && \
	cd /app && \
	npm install
