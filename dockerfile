FROM ubuntu:12.04

MAINTAINER sampath

RUN apt-get update && apt-get install -y apache2 && apt-get clean && rm -rf /var/lib/apt/lists/*

ENV APACHE_RUN_USER WWW.data
ENV APACHE_RUN_GROP WWW.data
ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80

CMD ["/usr/sbin/apache2", "D" , "FOREGROUND"]
