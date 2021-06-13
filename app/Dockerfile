FROM node:14.17

WORKDIR /app

COPY . .

RUN npm install

EXPOSE 8080

CMD ["node", "./src/serve.js"]