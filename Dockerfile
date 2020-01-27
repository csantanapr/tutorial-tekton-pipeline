FROM registry.access.redhat.com/ubi8/nodejs-12

RUN mkdir app

WORKDIR app

CMD [ "npm", "start" ]

COPY src/package*.json ./

RUN npm ci

COPY src .