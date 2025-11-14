FROM node:alpine

WORKDIR /usr/developer

COPY ./ ./

RUN npm install
RUN npm install typescript

CMD sh -c "npx tsc -b && node dist/index.js"




