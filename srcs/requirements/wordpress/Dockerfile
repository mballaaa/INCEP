FROM debian:oldstable

RUN apt -y update && \
    apt -y upgrade && \
    apt -y install php7.4 php7.4-fpm php7.4-mysql mariadb-server mariadb-client curl


COPY ./tools/script.sh /

COPY ./conf/wp-config.php /

RUN chmod +x /script.sh


CMD [ "/script.sh"]