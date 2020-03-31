FROM node:12-alpine3.10

RUN apk add --no-cache bash
RUN apk add --no-cache yarn

WORKDIR /usr/src/app

COPY package.json .
COPY lerna.json .

RUN yarn global add lerna


COPY packages/ ./packages/*

COPY applications/app1 ./applications/app1

EXPOSE 8080

CMD [ "yarn", "workspace", "@applications/app1", "start" ]