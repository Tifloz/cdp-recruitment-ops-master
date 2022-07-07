FROM  node:lts-alpine3.16

WORKDIR /app

ADD package*.json /app/

ADD server.js /app/

RUN npm i && adduser -S main_user

EXPOSE 3000

USER main_user

CMD ["node", "server.js"]