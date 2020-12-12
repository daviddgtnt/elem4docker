FROM node:15

WORKDIR /app

RUN git clone https://github.com/davecaruso/elemental4 .

RUN npm install -D

RUN npm run build-server

RUN node gen-env

EXPOSE 8000

CMD [ "node", "." ]
