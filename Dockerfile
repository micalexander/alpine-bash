
FROM alpine:3.5

MAINTAINER Michael Alexander <michael@micalexander.com>

RUN apk add --update --update-cache \
    alpine-sdk \
    bash \
    bzip2 \
    ctags \
    curl \
    docker \
    findutils \
    freetype-dev \
    gdbm \
    grep \
    libedit-dev \
    libffi-dev \
    libmcrypt \
    libnotify \
    libpng-dev \
    libxml2-dev \
    mysql-client \
    neovim \
    neovim-doc \
    openrc \
    openssh \
    openssl-dev \
    perl \
    procps \
    sed \
    the_silver_searcher \
    unzip \
    yaml-dev \
    && rm -rf /var/cache/apk/*

COPY docker-bash-entrypoint /usr/local/bin/

ENTRYPOINT ["docker-bash-entrypoint"]
