FROM node:7-alpine

WORKDIR /app
RUN npm install -g mysql nodemon && \
	npm cache clean

EXPOSE 3000
CMD ["nodemon", "./www/bin"]
