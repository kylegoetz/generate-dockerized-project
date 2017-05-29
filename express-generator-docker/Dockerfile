FROM node:7-alpine

LABEL com.kylegoetz.express-generator.version="0.1"
LABEL com.kylegoetz.release-date="2017-05-28"

# install create-react-app
RUN npm install -g express-generator

WORKDIR /app

VOLUME /app

CMD express $APP-api; cd $APP-api; npm install
