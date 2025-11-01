FROM node

ENV MONGO_DB_USERNAME=root\
    MONGO_DB_PASSWORD=root

RUN mkdir -p test-app

COPY . /test-app

CMD ["node", '/test-app/server.js']