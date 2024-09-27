FROM node:18

WORKDIR /app

RUN npm install

COPY . .

EXPOSE 8080

CMD ["npm", "start"]
