FROM matheusbloise/php:8.2-fpm-alpine-jit-prod AS php_builder

COPY . /app

ADD nginx.conf /etc/nginx/http.d/default.conf
ADD entrypoint.sh /bin

RUN apk add nginx && \
    chmod +x /bin/entrypoint.sh

ENTRYPOINT ["/bin/entrypoint.sh"]

EXPOSE 80