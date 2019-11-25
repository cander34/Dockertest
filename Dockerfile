FROM ubuntu

RUN apt update -y
RUN apt install tzdata -y
RUN apt install apache2 php7.2 php-mysql libapache2-mod-php -y
COPY charity /var/www/html

EXPOSE 80

CMD apachectl -D FOREGROUND
