FROM node:19.5.0-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

ENTRYPOINT ["node", "main.js"]

EXPOSE 8000
