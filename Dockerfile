FROM node:20.15.1-bookworm-slim

RUN npm install -g npm@latest

WORKDIR /app
COPY package*.json ./
RUN npm install --only=production
COPY . .

EXPOSE 8080

CMD [ "node", "index.js" ]
