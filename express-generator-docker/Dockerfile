FROM node:7-alpine

LABEL com.kylegoetz.express-generator.version="0.1"
LABEL com.kylegoetz.release-date="2017-05-28"

WORKDIR /tmp
VOLUME /app

# install create-react-app
RUN npm install -g express-generator && \
	express express-api && \
	cd express-api && \
	npm install

CMD cp -r /tmp/express-api /app 
