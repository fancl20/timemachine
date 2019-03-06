FROM alpine:latest

RUN apk add --no-cache avahi netatalk && \
    adduser -HD timemachine timemachine

ADD afp.conf /etc/afp.conf
ADD entrypoint.sh /

CMD ["/entrypoint.sh"]