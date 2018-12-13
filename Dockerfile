FROM node:10.9.0

RUN mkdir /app
COPY . /app
WORKDIR /app

RUN npm i --silent

EXPOSE 8000

CMD npm start
