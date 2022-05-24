FROM nginx:alpine

LABEL maintainer "Ramon Paolo Maran"

EXPOSE 80

WORKDIR /etc/nginx/conf.d

RUN rm -rf ./default.conf

COPY ./docker/settings/nginx.conf ./

CMD [ "nginx", "-g", "daemon off;" ]