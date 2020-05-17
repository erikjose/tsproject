FROM node:12.0

MAINTAINER Erik José Silva

RUN mkdir -p /home/node/api/node_modules && chown -R node:node /home/node/api

WORKDIR /home/node/api

COPY package.json ./ 

USER node

RUN npm install

COPY --chown=node:node . . 

ENTRYPOINT [ "npm", "run", "dev:server" ]



