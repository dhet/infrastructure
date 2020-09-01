FROM nextcloud:19.0-apache

USER www-data
RUN mkdir -p /var/www/html/config

COPY config.php /var/www/html/config/config.php


USER root

RUN apt-get update && apt-get install --no-install-recommends -y \
    supervisor \
  && rm -rf /var/lib/apt/lists/* \
  && mkdir /var/log/supervisord /var/run/supervisord


COPY supervisord.conf /
COPY cron-www-data /var/spool/cron/crontabs/www-data



ENV NEXTCLOUD_UPDATE=1

CMD ["/usr/bin/supervisord", "-c", "/supervisord.conf"]
