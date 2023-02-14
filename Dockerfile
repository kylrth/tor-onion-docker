FROM alpine:3.17.2

RUN apk update
RUN apk add tor

RUN chown -R 1000:1000 /etc
RUN chown -R 1000:1000 /var/lib/tor
USER 1000

COPY torrc /etc/torrc
ENTRYPOINT ["/usr/bin/tor", "-f", "/etc/torrc"]

EXPOSE 80
