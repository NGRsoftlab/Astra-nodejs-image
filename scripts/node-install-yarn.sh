#!/usr/bin/env sh

set -e

## If certified - exit
[ -z "${certified}" ] || exit 0

## Mock check npm version before start
npm --version

## If $1 received install specific yarn, or install latest
if [ -n "$1" ]; then
  npm -g install "yarn@${1}"
else
  npm -g install yarn
fi

## Check yarn version
yarn --version

exit 0
