FROM node:12 as node

ARG NODE_ENV=production

WORKDIR /app

COPY ./package.json /app/package.json

RUN yarn install

COPY . .

RUN yarn build


FROM nginx

COPY ./nginx/upstream.conf /etc/nginx/conf.d/upstream.conf
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf

CMD --from=node ["yarn", "start"]