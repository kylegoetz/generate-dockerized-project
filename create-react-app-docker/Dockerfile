FROM node:7-alpine

LABEL com.kylegoetz.create-react-app.version="0.1"
LABEL com.kylegoetz.release-date="2017-05-28"

# install create-react-app
RUN npm install -g create-react-app

WORKDIR /app

VOLUME /app

CMD create-react-app $APP-ui

