FROM node:lts-alpine

WORKDIR /app

RUN apk add --no-cache python3 python3-dev py3-pip make g++ bash sqlite sqlite-dev git

COPY package*.json ./

RUN npm install --omit=dev

COPY . .

VOLUME ["/app/attachments", "/app/db", "/app/plugins", "/app/config.ini"]

EXPOSE 8890

CMD ["npm", "start"]
