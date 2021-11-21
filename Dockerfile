FROM node:8-alpine
RUN mkdir /.npm && chmod -R 777 /.npm
RUN apk update && apk add curl
RUN apk add git
EXPOSE 3000
