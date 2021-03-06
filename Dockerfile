FROM node:latest

RUN mkdir /app
WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json package-lock.json /app/
RUN npm install

COPY . /app/
