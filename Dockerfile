FROM php:7.2-apache
MAINTAINER Bender77
LABEL Name=unifi-api-browser Version=0.0.1
RUN apt-get -y update && apt-get install -y \
curl \
git
WORKDIR /app
RUN curl https://raw.githubusercontent.com/benderstwin/UniFi-API-Client/master/index.php > entry.sh
ENV ENV_USER=user \
    ENV_PWD=pass \
    ENV_URL=https://127.0.0.1:8443 \
    ENV_SITE=default \
    ENV_VER=5.6.39 \
    ENV_DEBUG=false \
    ENV_HSSL=false
EXPOSE 80
VOLUME [ "/var/www/html" ]
ENTRYPOINT {"entry.sh"}
CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
