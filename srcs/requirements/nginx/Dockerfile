
FROM debian:oldstable

ARG PATH_KEY
ARG PATH_CTR


RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get install -y openssl

RUN mkdir -p /etc/nginx/ssl 

RUN openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout /etc/nginx/ssl/mbaa.key -out /etc/nginx/ssl/mbaa.ctr -subj "/"
COPY conf/nginx.conf /etc/nginx/nginx.conf


COPY ./tools/script.sh /





RUN chmod +x /script.sh




CMD [ "/script.sh" ]