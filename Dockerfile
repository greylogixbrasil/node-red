FROM nodered/node-red:3.1.4-18
COPY ./package-lock.json ./
USER root
RUN apk update && apk upgrade && apk add sqlite
RUN npm install
USER node-red
RUN touch /data/buffer.db
