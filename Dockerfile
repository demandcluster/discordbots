# Dockerfile to install Node 19.0.0 and NPM 6.14.4
FROM node:19-alpine
# Create app directory
WORKDIR /usr/src/app
RUN apt-get update && apt-get install -y \
    build-essential \
    python 
# Install app dependencies
COPY package*.json ./
RUN npm install
RUN mkdir /usr/src/app/databases
# Bundle app source
COPY . .
EXPOSE 8080
CMD [ "npm", "start" ]
