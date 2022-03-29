FROM node:14-slim

WORKDIR /app

RUN npm i -g pm2

COPY package*.json ./

RUN npm i --production

COPY . .

EXPOSE 5656

CMD ["pm2-runtime", "server.js"]%
