#!/usr/bin/env sh
set -eu

envsubst '${PORT} ${API_HOST} ${WEB_HOST}' < /etc/nginx/nginx.conf.template > /etc/nginx/nginx.conf

exec "$@"