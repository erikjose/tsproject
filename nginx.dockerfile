FROM nginx 

MAINTAINER Erik José Silva

COPY /docker/config/nginx.conf /etc/nginx/nginx.conf

EXPOSE 80 443

ENTRYPOINT ["nginx"]

CMD ["-g", "daemon off;"] 
