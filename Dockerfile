# base image
FROM node:13-alpine

# set working directory
WORKDIR /app

# add `/app/node_modules/.bin` to $PATH
ENV PATH /app/node_modules/.bin:$PATH

# install and cache app dependencies
COPY package.json /app/package.json

RUN npm install
RUN npm install @vue/cli -g

COPY vue.config.js /app/vue.config.js
# start app
CMD ["npm", "run", "serve" , "-eslint-disable"]