#!/usr/bin/env bash

set -e

source /etc/environment

if [[ ${NODE_REVISION,,} == 'installed-from-url' ]]; then
  ## Commented because switch to absolute optimization
  # ARCH=''
  # OPENSSL_ARCH=''
  # DPKG_ARCH="$(dpkg --print-architecture)"
  # case "${DPKG_ARCH##*-}" in
  #   amd64) ARCH='x64'; OPENSSL_ARCH='linux-x86_64';;
  #   ppc64el) ARCH='ppc64le'; OPENSSL_ARCH='linux-ppc64le';;
  #   s390x) ARCH='s390x'; OPENSSL_ARCH='linux*-s390x';;
  #   arm64) ARCH='arm64'; OPENSSL_ARCH='linux-aarch64';;
  #   armhf) ARCH='armv7l'; OPENSSL_ARCH='linux-armv4';;
  #   i386) ARCH='x86'; OPENSSL_ARCH='linux-elf';;
  #   *) echo "unsupported architecture"; exit 1 ;;
  # esac

  # ## Remove unused OpenSSL headers to save ~34MB. See this NodeJS issue: https://github.com/nodejs/node/issues/46451
  # find /usr/local/include/node/openssl/archs -mindepth 1 -maxdepth 1 ! -name "${OPENSSL_ARCH}" -exec rm -rf {} \;

  ## Remove header files (required for native modules)
  rm -rf /usr/local/include/node/

  ## Remove doc
  rm -rf /usr/local/share/doc/node/
  rm -rf /usr/local/lib/node_modules/npm/html-docs/
  rm -f /usr/local/man/man1/node.1

  ## Remove scripts and examples
  rm -rf /usr/local/lib/node_modules/npm/scripts/
  rm -rf /usr/local/lib/node_modules/npm/test/
  rm -rf /usr/local/lib/node_modules/npm/example/

  ## Remove npm cache
  rm -rf ~/.npm/
  rm -rf /tmp/*

  ## Disable because use optimized image
  # apt-mark auto '.*' > /dev/null
  # find /usr/local -type f -executable -exec ldd '{}' ';' \
  #   | awk '/=>/ { so = $(NF-1); if (index(so, "/usr/local/") == 1) { next }; gsub("^/(usr/)?", "", so); print so }' \
  #   | sort -u \
  #   | xargs -r dpkg-query --search \
  #   | cut -d: -f1 \
  #   | sort -u \
  #   | xargs -r apt-mark manual
  # apt-get purge -y --auto-remove -o APT::AutoRemove::RecommendsImportant=false
else
  ## Remove header files (required for native modules)
  rm -rf /usr/include/node/

  ## Remove doc
  rm -rf /usr/share/doc/nodejs/
  rm -rf /usr/share/node_modules/npm/html-docs/
  rm -f /usr/share/man/man1/node.1

  ## Remove npm cache
  rm -rf ~/.npm/*
  rm -rf /tmp/*
fi

exit 0
