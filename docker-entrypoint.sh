#!/bin/ash -e

if [ ${#} -eq 0 ]; then
  echo "Starting docker-nginx"

  j2 --undefined /code/nginx.conf.j2 > /etc/nginx/nginx.conf

  echo "Starting nginx"
  exec nginx -g 'daemon off;'
else
  exec "${@}"
fi
