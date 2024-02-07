FROM nodered/node-red:3.1.4-18
COPY ./package-lock.json ./
USER root
RUN chown 1000:1000 package-lock.json
RUN apk update && apk upgrade && apk add sqlite
USER node-red
RUN touch /data/buffer.db
RUN npm install
RUN npm ci
