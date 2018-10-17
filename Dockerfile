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
  htop \
  jq \
  libedit-dev \
  libffi-dev \
  libmcrypt \
  libnotify \
  libpng-dev \
  libsodium \
  libxml2-dev \
  libxslt-dev \
  linux-headers \
  man \
  mysql-client \
  mosh \
  nasm \
  ncurses \
  neovim \
  neovim-doc \
  openrc \
  openssh \
  openssl-dev \
  pcre-dev \
  perl \
  procps \
  rsync \
  sed \
  shadow \
  sqlite-libs \
  tcpdump \
  the_silver_searcher \
  tmux \
  tzdata \
  unzip \
  wget \
  yaml-dev \
  yarn \
  && rm -rf /var/cache/apk/*

COPY append_line /usr/local/bin/
COPY docker-bash-pathways /usr/local/bin/
COPY docker-bash-globals /usr/local/bin/
COPY packs/ /usr/local/bin/
COPY docker-bash-entrypoint /usr/local/bin/

ENTRYPOINT ["docker-bash-entrypoint"]
