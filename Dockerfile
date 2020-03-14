FROM node:12.14.1

RUN mkdir -p /app
WORKDIR /app

COPY package.json .
COPY index.js .

RUN npm i

EXPOSE 8080

ENTRYPOINT [ "node", "index.js" ]