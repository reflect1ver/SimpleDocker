#!/bin/bash

service nginx start
gcc fcgi.c -lfcgi
spawn-fcgi -p 8080 a.out
nginx -s reload

while true; do
        wait
done