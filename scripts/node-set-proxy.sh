#!/usr/bin/env sh

set -e

## Check first arg on exist
: "${1:?Define node package manager such as 'yarn', 'npm' or 'pnpm' and etc}"

if [ -n "${npm_registry_proxy}" ]; then
  eval "${1}" config set registry "${npm_registry_proxy}" --global
elif [ -n "${package_registry_proxy}" ]; then
  eval "${1}" config set registry "${package_registry_proxy}" --global
fi

eval "${1}" config get registry

exit 0
