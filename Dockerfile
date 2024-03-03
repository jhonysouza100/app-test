FROM alpine:3.19

ENV NODE_VERSION 21.6.2

WORKDIR /app

COPY ./package.json /app/

RUN npm install

COPY ./ /app

ENV NODE_ENV production

RUN npm run build

CMD [ "npm", "run", "preview" ]
