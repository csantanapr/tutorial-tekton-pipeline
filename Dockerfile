FROM registry.access.redhat.com/ubi8/nodejs-12

COPY src src

WORKDIR src

RUN npm install --production

CMD [ "npm", "start" ]
