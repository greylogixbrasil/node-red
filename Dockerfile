FROM nodered/node-red
USER root
RUN apk update && apk upgrade && apk add sqlite
USER node-red
ENV NODE_RED_ENABLE_PROJECTS=true
RUN touch /data/buffer.db
RUN npm install \
  --no-audit \
  --no-update-notifier \
  --no-fund \
  --save \
  --save-prefix=~ \
  --production \
  --engine-strict \
    node-red-dashboard \
    node-red-node-email \
    node-red-node-sqlite \
    node-red-node-ui-table \
    node-red-contrib-advanced-ping \
    node-red-contrib-clock-generator \
    node-red-contrib-countdown \
    node-red-contrib-counter \
    node-red-contrib-fs-ops \
    node-red-contrib-google-cloud \
    node-red-contrib-hourglass \
    node-red-contrib-influxdb \
    node-red-contrib-interval-length \
    node-red-contrib-linux-network-stats \
    node-red-contrib-modbus \
    node-red-contrib-opcua \
    node-red-contrib-os \
    node-red-contrib-queued-sqlite-fix \
    node-red-contrib-s7 \
    node-red-contrib-siemens-sentron \
    node-red-contrib-telegrambot \
    node-red-contrib-ui-heatmap \
    node-red-contrib-ui-led \
    passport-github2 \
    sqlite-plugin-red
