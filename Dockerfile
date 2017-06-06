FROM alpine:latest
MAINTAINER Onni Hakala <onni@keksi.io>

ARG BUILD_DEPS="gettext"
ARG RUNTIME_DEPS="libintl"

RUN apk add --update $RUNTIME_DEPS && \
    apk add --virtual build_deps $BUILD_DEPS &&  \
    cp /usr/bin/envsubst /usr/local/bin/envsubst && \
    apk del build_deps \

    # Remove cache and tmp files
    rm -rf /var/cache/apk/* && \
    rm -rf /tmp/*


COPY ./entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]