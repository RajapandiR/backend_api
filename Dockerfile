FROM node:alpine

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY . /usr/src/app

EXPOSE 6006
CMD ["sh", "-c", "NODE_ENV=${APP_ENV} npm start"]   