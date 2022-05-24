FROM node:14.17-alpine

WORKDIR /app

LABEL maintainer "Ramon Paolo Maran"

EXPOSE 3000

CMD [ "yarn", "dev" ]