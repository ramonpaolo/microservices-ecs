FROM node:14.17-alpine AS build

WORKDIR /app

COPY /services/books/package.json /services/books/yarn.lock ./

RUN yarn install

COPY /services/books .

RUN yarn build

#----------

FROM node:14.17-alpine

LABEL maintainer "Ramon Paolo Maran"

EXPOSE 3000

WORKDIR /app

COPY --from=build /app ./

RUN rm -rf ./src && rm -rf ./tsconfig.js && rm -rf jest.config.ts && rm -rf environment.d.ts && rm -rf docker-compose.yaml && rm -rf ./docker && rm -rf babel.config.js && rm -rf README.md && rm -rf LICENSE && rm \
    -rf .czrc && rm -rf .dockerignore && rm -rf .editorconfig && rm -rf .eslintrc.json && rm -rf .gitignore

CMD [ "yarn", "start" ]