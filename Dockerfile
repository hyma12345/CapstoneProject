FROM ubuntu

MAINTAINER hyma


RUN apt-get update -y &&  apt-get install apache2 -y

COPY ./httpd.conf /etc/apache2/apache2.conf

COPY ./*.html  /var/www/html/

CMD ["apache2ctl", "-D", "FOREGROUND"]

