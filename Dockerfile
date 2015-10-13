FROM node:0.11.15

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

RUN npm install underscore log bison express socket.io websocket sanitizer@0.1.2 memcache@0.3.0 --registry=https://registry.npm.taobao.org --disturl=http://npm.taobao.org/dist

COPY . /usr/src/app

EXPOSE 8000

CMD [ "node","server/js/main.js"]