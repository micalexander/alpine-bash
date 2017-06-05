FROM alpine:3.5

MAINTAINER Michael Alexander <michael@micalexander.com>

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
	  zlib-dev \
    && rm -rf /var/cache/apk/*

RUN pip install --upgrade \
    pip \
    httpie \
    httpie-unixsocket

COPY docker-bash-entrypoint /usr/local/bin/

CMD ["export PATH=$RUBY_LOCAL_BIN:$NODE_LOCAL_BIN:$PATH"]

ENTRYPOINT ["docker-bash-entrypoint"]

