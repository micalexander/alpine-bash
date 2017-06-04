FROM alpine:3.5

MAINTAINER Michael Alexander <michael@micalexander.com>

ARG DEV_USER
ARG RUBY_LOCAL_DIR=/usr/local/ruby
ARG NODE_LOCAL_DIR=/usr/local/node

ENV PATH $RUBY_LOCAL_DIR/bin:$NODE_LOCAL_DIR/bin:$PATH
ENV DEV_USER $DEV_USER

RUN apk add --update --update-cache \
    git \
    curl \
    tar \
    unzip \
    grep \
    sed \
    bash \
    neovim \
    mysql-client \
    python \
    py-pip \
    ca-certificates \
    make \
    gcc \
	  libc-dev \
    gdbm \
    libcrypto1.0 \
    libffi \
    libssl1.0 \
    musl \
    ncurses-libs \
    readline \
    yaml \
    zlib \
    bzip2 \
    libedit-dev \
    libxml2-dev \
	  ca-certificates \
	  libffi-dev \
	  openssl-dev \
	  yaml-dev \
	  procps \
	  zlib-dev

RUN pip install --upgrade pip

RUN pip install httpie httpie-unixsocket && rm -rf /var/cache/apk/*

COPY docker-bash-entrypoint.sh /usr/local/bin/

ENTRYPOINT ["docker-bash-entrypoint.sh"]

