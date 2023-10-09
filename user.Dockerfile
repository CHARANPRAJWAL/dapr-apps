FROM node:18-alpine As development

WORKDIR /usr/app

COPY package*.json ./

RUN npm install

COPY . .

CMD [ "npm","run","start-user" ]

#EXPOSE 4002

EXPOSE 4000
