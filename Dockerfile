FROM alpine:3.6

MAINTAINER Michael Alexander <michael@micalexander.com>

RUN apk add --update --update-cache \
  alpine-sdk \
  bash \
  bash-completion \
  bzip2 \
  ctags \
  curl \
  docker \
  findutils \
  freetype-dev \
  gdbm \
  grep \
  jq \
  libedit-dev \
  libffi-dev \
  libmcrypt \
  libnotify \
  libpng-dev \
  libxml2-dev \
  linux-headers \
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
  tzdata \
  unzip \
  wget \
  yaml-dev \
  && rm -rf /var/cache/apk/*

COPY docker-bash-entrypoint /usr/local/bin/

ENTRYPOINT ["docker-bash-entrypoint"]
