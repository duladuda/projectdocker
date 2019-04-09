FROM ubuntu:latest
EXPOSE 80
RUN apt-get update -y
RUN apt install apache2 -y
COPY src/index.html /var/www/html
CMD /usr/sbin/apache2ctl -D FOREGROUND

