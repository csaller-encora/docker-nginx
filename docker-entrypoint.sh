#!/bin/ash

mkdir -p /run/nginx/
rm -rf /run/nginx/nginx.pid

  sed \
    -e "s/:DESTINATION_URL:/$DESTINATION_URL\//g" \
    /code/nginx.conf.templ > /etc/nginx/conf.d/default.conf

  echo "Starting nginx..."
  exec nginx -g 'daemon off;'
else
  exec "${@}"
fi
