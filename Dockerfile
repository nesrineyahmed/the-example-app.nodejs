FROM node:8-alpine
RUN mkdir /.npm && chown -R 777 /.npm
RUN apk update && apk add -y curl
