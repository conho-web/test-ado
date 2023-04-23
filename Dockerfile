FROM node:16-slim AS builder

ARG VUE_APP_API_URL

WORKDIR /app
COPY package.json ./
RUN yarn install --ignore-optional
COPY . .
RUN yarn build

FROM nginx:latest AS server
COPY ./etc/nginx.conf /etc/nginx/conf.d/default.conf
COPY --from=builder ./app/dist /usr/share/nginx/html
