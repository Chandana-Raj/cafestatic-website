FROM ubuntu:latest
ARG DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y && apt-get install -y apache2
ADD . /var/www/html/
EXPOSE 80
ENTRYPOINT apachectl -D FOREGROUND
