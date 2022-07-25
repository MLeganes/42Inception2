FROM debian:buster-20220711

ADD http://www.adminer.org/latest.php /var/www/adminer.php

RUN apt-get update -y
RUN	apt-get upgrade -y 
RUN apt-get install procps -y

RUN chown -R www-data:www-data /var/www/adminer.php
RUN chmod 755 /var/www/adminer.php
ENTRYPOINT cp /var/www/adminer.php /var/www/html/adminer.php

EXPOSE 8080