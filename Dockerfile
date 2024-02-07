FROM nodered/node-red:3.1.4-18
USER root
RUN apk update && apk upgrade && apk add sqlite
USER node-red
ENV NODE_RED_ENABLE_PROJECTS=true
RUN touch /data/buffer.db
COPY ./package-lock.json ./
RUN npm install package-lock.json
