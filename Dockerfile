#BUILD A DOCKER IMAGE
FROM ubuntu:20.04
RUN apt-get update 
RUN apt-get -y install apache2
VOLUME ["/var/www/html"]
CMD ["apache2ctl", "-D", "FOREGROUND"]
