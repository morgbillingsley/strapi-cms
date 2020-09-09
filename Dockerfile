FROM node:12 as node

WORKDIR /app

COPY ./package.json /app/package.json

RUN yarn install

COPY . .

RUN NODE_ENV=production yarn build
CMD NODE_ENV=production yarn start
