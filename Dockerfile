FROM node:16-alpine
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm ci
COPY . .
RUN touch config.ini
CMD ["npm", "start"]
