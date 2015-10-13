FROM node:0.11.15

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm install node-websocket-server underscore log bison websocket sanitizer memcache --registry=https://registry.npm.taobao.org --disturl=http://npm.taobao.org/dist

COPY . /usr/src/app

EXPOSE 8000

CMD [ "node","server/js/main.js`"]