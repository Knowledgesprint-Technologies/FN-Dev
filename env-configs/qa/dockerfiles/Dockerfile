FROM alpine:3.16
RUN apk add apache2
WORKDIR /var/www/localhost/htdocs
ADD html-gen-files .
EXPOSE 80
ENTRYPOINT ["httpd", "-D", "FOREGROUND"]
