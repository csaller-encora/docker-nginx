FROM alpine:3.12

RUN apk add --no-cache\
    nginx~=1.18 \
    py3-pip \
    pip3 install --no-cache-dir \
    j2cli==0.3.10 \
    rm -rf /etc/nginx/nginx.conf /etc/nginx/conf.d/*

COPY ./ /code/
COPY docker-entrypoint.sh /usr/local/bin/

EXPOSE 80

ENTRYPOINT ["docker-entrypoint.sh"]
