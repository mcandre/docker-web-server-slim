FROM debian:jessie
MAINTAINER Andrew Pennebaker <andrew.pennebaker@gmail.com>
RUN apt-get update && \
    apt-get install -y apache2
EXPOSE 80
ENTRYPOINT /usr/sbin/apache2ctl -D FOREGROUND
