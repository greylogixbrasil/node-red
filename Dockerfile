FROM nodered/node-red
USER root
RUN apk update && apk upgrade && apk add sqlite
USER node-red
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
    node-red-contrib-advanced-ping \
    node-red-contrib-clock-generator \
    node-red-contrib-countdown \
    node-red-contrib-counter \
    node-red-contrib-fs-ops \
    node-red-contrib-google-cloud \
    node-red-contrib-hourglass \
    node-red-contrib-interval-length \
    node-red-contrib-modbus \
    node-red-contrib-opcua \
    node-red-contrib-os \
    node-red-contrib-queued-sqlite-fix \
    node-red-contrib-s7 \
    node-red-contrib-telegrambot \
    node-red-contrib-ui-led \
    sqlite-plugin-red
