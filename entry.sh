#!/bin/bash
mkdir /var/www/html/unifi && cd /var/www/html/unifi
git clone https://github.com/Art-of-WiFi/UniFi-API-client.git .
rm /var/www/html/unifi/src/Client.php && \
curl https://raw.githubusercontent.com/benderstwin/Unifi-API-Browser/master/Client.php > /var/www/html/unifi/src/Client.php && \
curl https://raw.githubusercontent.com/benderstwin/UniFi-API-Client/master/index.php > /var/www/html/index.php