FROM nodered/node-red:3.1.4-18
COPY ./npm-shrinkwrap.json ./
USER root
RUN chown 1000:1000 npm-shrinkwrap.json
RUN apk update && apk upgrade && apk add sqlite
USER node-red
RUN touch /data/buffer.db
RUN npm install
RUN npm ci
