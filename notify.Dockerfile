FROM node:18-alpine As development

WORKDIR /usr/app

COPY package*.json ./

RUN npm install

COPY . .

CMD [ "npm","run","start-notification" ]

EXPOSE 4002
