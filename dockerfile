#BUILD A DOCKER IMAGE
FROM ubuntu:20.04
RUN apt-get update 
RUN apt-get install apache2
CMD ["apachectl", "-D", "FOREGROUND"]
