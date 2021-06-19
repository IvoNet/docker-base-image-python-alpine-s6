FROM python:3.9.5-alpine3.13

LABEL maintainer="IvoNet.nl"

RUN apk --no-cache --no-progress add bash curl tar \
 && curl -s -L "https://github.com/just-containers/s6-overlay/releases/download/v2.2.0.3/s6-overlay-amd64.tar.gz" | tar xz -C / \
 && apk del --purge tar \
 && rm -rf /tmp/*

ENTRYPOINT ["/init"]
