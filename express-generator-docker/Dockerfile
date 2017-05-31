FROM node:7-alpine

LABEL com.kylegoetz.express-generator.version="0.1"
LABEL com.kylegoetz.release-date="2017-05-28"

WORKDIR /tmp
VOLUME /app

# install create-react-app
RUN npm install -g express-generator && \
	express express-api && \
	cd express-api && \
	npm install mysql sequelize --save && \
	npm install --save-dev sequelize-cli && \
	./node_modules/.bin/sequelize init && \
	npm cache clean && \
	rm -rf ./node_modules

ADD ./sequelize.conf /tmp/express-api/config/config.json

CMD cp -r /tmp/express-api /app && \
	cd /app/express-api && \
	npm install
