FROM nginx

RUN mkdir -p /etc/nginx/logs && touch /etc/nginx/logs/static.log

ADD ./nginx.conf /etc/nginx/nginx.conf
ADD ./server.crt /etc/nginx/server.crt
ADD ./server.key /etc/nginx/server.key
ADD /src /www
