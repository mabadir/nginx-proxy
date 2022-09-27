FROM nginx
ARG PORT
ARG API_HOST
ARG WEB_HOST
ENV PORT=$PORT
ENV API_HOST=$API_HOST
ENV WEB_HOST=$WEB_HOST
COPY nginx.conf.template /etc/nginx/nginx.conf.template

EXPOSE $PORT

STOPSIGNAL SIGTERM

COPY entrypoint.sh /
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
