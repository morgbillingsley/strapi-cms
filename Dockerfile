FROM node:12 as node

ARG NODE_ENV=production

WORKDIR /app

COPY ./package.json /app/package.json

RUN yarn install

COPY . .

RUN yarn build
CMD ["yarn", "start"]


FROM nginx

COPY ./nginx/upstream.conf /etc/nginx/conf.d/upstream.conf
COPY ./nginx/default.conf /etc/nginx/conf.d/default.conf
