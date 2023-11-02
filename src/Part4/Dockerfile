FROM nginx

USER root

RUN apt-get update; \
    apt-get install -y gcc spawn-fcgi libfcgi-dev

COPY ./miniserver/nginx/nginx.conf /etc/nginx/
COPY ./miniserver/fcgi.c /home/

COPY run.sh /home/

WORKDIR /home/

RUN chmod +x run.sh

CMD [ "sh", "./run.sh" ]