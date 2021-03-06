FROM alpine:3.15.0

RUN apk update
RUN apk add tor

RUN chown -R 1000:1000 /etc
RUN chown -R 1000:1000 /var/lib/tor
USER 1000

COPY torrc /etc/torrc
COPY entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/bin/sh", "/entrypoint.sh"]

EXPOSE 80
