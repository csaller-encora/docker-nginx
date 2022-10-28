FROM alpine:3.12

RUN apk add --no-cache\
    nginx~=1.18

# RUN rm -rf /etc/nginx/conf.d/*

COPY ./ /code/
COPY docker-entrypoint.sh /usr/local/bin/

EXPOSE 80

ENTRYPOINT ["docker-entrypoint.sh"]
