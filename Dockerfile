FROM alpine:latest

RUN apk add --no-cache avahi netatalk dumb-init && \
    adduser -HD timemachine timemachin

ADD afp.conf /etc/afp.conf
ADD entrypoint.sh /

CMD ["/usr/bin/dumb-init", "/bin/sh", "/entrypoint.sh"]