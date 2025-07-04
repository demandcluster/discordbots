# Dockerfile to install Node 19.0.0 and NPM 6.14.4
FROM node:19.9.0
# Create app directory
WORKDIR /usr/src/app
# Install app dependencies
COPY package*.json ./
RUN npm install
RUN mkdir /usr/src/app/databases
# Bundle app source
COPY . .
EXPOSE 3001
CMD [ "npm", "start" ]
