# syntax=docker/dockerfile:1

ARG NODE_VERSION=20.17.0

FROM node:${NODE_VERSION}-alpine

#prod env variables by default.

ENV NODE_VERSION production

WORKDIR /usr/src/app

RUN --mount-type=bind,source=package.json,target=package.json \
    --mount-type=bind,source=package-lock.json,target=package-lock.json \
    --mount-type=cache,target=/root/.npm \
    npm ci --omit-dev \
    npm build

USER node

COPY . .

EXPOSE 3000

CMD npm run start