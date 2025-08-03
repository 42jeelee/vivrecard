#!/bin/bash

docker run --rm \
  -v "$(pwd)/docker/certbot/www:/var/www/certbot" \
  -v "$(pwd)/docker/certbot/conf:/etc/letsencrypt" \
  certbot/certbot certonly --webroot \
  --webroot-path=/var/www/certbot \
  --email jeelee553@gmail.com --agree-tos --no-eff-email \
  -d vivrecard.app -d www.vivrecard.app