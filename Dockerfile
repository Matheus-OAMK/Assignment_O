FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
RUN apt-get clean
EXPOSE 80
RUN echo "Hello this is Matheus' app" > /var/www/html/index.html
CMD ["apache2ctl","-D","FOREGROUND"]
