FROM alpine:edge

MAINTAINER Michael Alexander <michael@micalexander.com>

RUN apk add --update --update-cache \
  alpine-sdk \
  autoconf \
  automake \
  bash \
  bash-completion \
  bzip2 \
  ctags \
  curl \
  docker \
  file \
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
  man \
  mysql-client \
  mosh \
  nasm \
  neovim \
  neovim-doc \
  openrc \
  openssh \
  openssl-dev \
  perl \
  procps \
  rsync \
  sed \
  shadow \
  the_silver_searcher \
  tmux \
  tzdata \
  unzip \
  wget \
  yaml-dev \
  && rm -rf /var/cache/apk/*

COPY docker-bash-entrypoint /usr/local/bin/

ENTRYPOINT ["docker-bash-entrypoint"]
