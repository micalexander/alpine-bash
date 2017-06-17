FROM alpine:3.5

MAINTAINER Michael Alexander <michael@micalexander.com>

RUN apk add --update --update-cache \
    alpine-sdk \
    ansible \
    bash \
    bzip2 \
    ca-certificates \
    curl \
    docker \
    gdbm \
    grep \
    libcrypto1.0 \
    libedit-dev \
    libffi \
    libffi-dev \
    libmcrypt \
    libnotify \
    libpng-dev \
    libssl1.0 \
    libxml2-dev \
    mysql-client \
    ncurses-libs \
    neovim \
    openrc \
    openssh \
    openssl-dev \
    procps \
    py-pip \
    python \
    readline \
    sed \
    tar \
    unzip \
    yaml \
    yaml-dev \
    zlib \
    zlib-dev \
    && rm -rf /var/cache/apk/*

RUN pip install --upgrade \
    pip \
    httpie \
    httpie-unixsocket

COPY docker-bash-entrypoint /usr/local/bin/

ENTRYPOINT ["docker-bash-entrypoint"]

