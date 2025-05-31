FROM alpine:latest

RUN apk update && apk add --no-cache nginx
RUN adduser -D -g 'nginx' myuser

RUN chown -R myuser:nginx /var/lib/nginx /var/log/nginx /run/nginx /usr/share/nginx && \
    chmod -R 770 /var/lib/nginx

RUN mkdir -p /usr/share/nginx/html && \
    chown myuser:nginx /usr/share/nginx/html && \
    chmod 775 /usr/share/nginx/html

EXPOSE 8080

USER myuser

CMD ["nginx", "-g", "daemon off;"]