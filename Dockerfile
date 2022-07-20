FROM alpine:latest

RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.13/community" >> /etc/apk/repositories
RUN echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories
RUN apk -U upgrade && apk add --no-cache \
    curl \
    nginx 

EXPOSE 8080

CMD nginx
#CMD ["nginx", "-g", "daemon off;"]
