FROM node:20.19.3-bookworm-slim

RUN npm install -g npm@latest

WORKDIR /app
COPY package*.json ./
RUN npm install --only=production
COPY . .

EXPOSE 8080

CMD [ "node", "index.js" ]
