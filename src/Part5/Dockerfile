FROM nginx

USER root

RUN apt-get update; \
    apt-get install -y gcc spawn-fcgi libfcgi-dev; \
    rm -rf /var/lib/apt/lists

COPY ./miniserver/nginx/nginx.conf /etc/nginx/
COPY ./miniserver/fcgi.c /home/

COPY run.sh /home/

WORKDIR /home/

RUN chmod +x run.sh

USER nginx
CMD [ "sh", "./run.sh" ]
