# dumb-nginx

just a small nginx reverse proxy for Docker that accepts a value from a variable.

# how to use?

build this image using `docker build -t dumb-nginx .` and run it using `docker run -e DESTINATION_URL=https://google.com dumb-nginx`.

You can edit the `DESTINATION_URL` variable to whatever you need.
