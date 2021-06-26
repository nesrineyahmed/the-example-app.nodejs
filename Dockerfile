FROM node:8-alpine
RUN mkdir /.npm && chown -R 127:134 /.npm
