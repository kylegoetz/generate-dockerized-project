FROM node:7-alpine

ADD ./entrypoint.sh /tmp

WORKDIR /app
RUN npm install -g nodemon && \
	npm cache clean

EXPOSE 3000

CMD ["/tmp/entrypoint.sh"]
