FROM rabbitmq:3.9.9-alpine

LABEL maintainer "Ramon Paolo Maran"

EXPOSE 5672

ENV RABBITMQ_DEFAULT_USER=root RABBITMQ_DEFAULT_PASS=password