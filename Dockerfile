#BUILD A DOCKER IMAGE
FROM ubuntu:20.04
RUN apt-get update 
RUN apt-get install apache2 -y
VOLUME ["/var/www/html"]
CMD ["apache2ctl", "-D", "FOREGROUND"]
