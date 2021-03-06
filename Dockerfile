FROM node:argon

# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Install app dependencies
COPY serviceProviderNodeJSPassport/package.json /usr/src/app/
RUN npm install

# Bundle app source
COPY serviceProviderNodeJSPassport /usr/src/app

EXPOSE 3001
CMD [ "npm", "start" ]
