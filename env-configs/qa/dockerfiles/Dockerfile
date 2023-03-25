FROM alpine:3.16
RUN apk add apache2
WORKDIR /var/www/localhost/htdocs
ADD /home/dockeradm/html-gen-files .
EXPOSE 80
ENTRYPOINT ["httpd", "-D", "FOREGROUND"]

