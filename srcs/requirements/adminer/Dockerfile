FROM alpine:3.16

RUN apk add --no-cache \
	curl \
	tini \
	php8 \
	php8-session \
	php8-mysqli \
	php8-pgsql \
	php8-json \
	php8-pecl-mongodb

WORKDIR /var/www/html

ENV	ADMINER_VERSION 4.8.1
RUN	curl -fsSL "https://github.com/vrana/adminer/releases/download/v$ADMINER_VERSION/adminer-$ADMINER_VERSION.php" -o index.php

ENTRYPOINT ["/sbin/tini", "--"]

EXPOSE 8080
CMD ["php", \
	"-S", "0.0.0.0:8080", \
	"-d memory_limit=1G", \
	"-d upload_max_filesize=128M", \
	"-d post_max_size=128M"]


###
# No working version
###

# FROM debian:buster-20220711

# RUN apt-get update -y
# RUN apt-get upgrade -y

# RUN apt-get install -y 
# 	php7.3-fpm \
# 	php7.3-mysql \
# 	mariadb-client \
# 	wget
# RUN rm -rf /var/lib/apt/lists/*

# COPY ./www.conf /etc/php/7.3/fpm/pool.d

# RUN mkdir /run/php

# ADD https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php /var/www/adminer/index.php

# RUN chown -R www-data:www-data /var/www/adminer/index.php
# RUN chmod 755 /var/www/adminer/index.php

# EXPOSE 8080

# CMD ["/usr/sbin/php-fpm7.3", "--nodaemonize", "--allow-to-run-as-root"]
