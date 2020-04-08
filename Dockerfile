FROM nginx

RUN ls
COPY ./src/ /var/www
COPY ./nginx.conf /etc/nginx/conf.d/default.conf

RUN ./etc/init.d/nginx start

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
