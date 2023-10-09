FROM node:18-alpine As development

WORKDIR /usr/app

COPY package*.json ./

RUN npm install

COPY . .

CMD [ "npm","run","start" ]

EXPOSE 4002