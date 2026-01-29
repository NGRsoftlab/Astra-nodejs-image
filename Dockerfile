# syntax=docker/dockerfile:1.7-labs

## Definite image args
ARG image_registry
ARG image_name=astra
ARG image_version=1.8.2-slim

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                         Base image                          #
#               First stage, prepare environment              #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
FROM ${image_registry}${image_name}:${image_version} AS base-stage

SHELL [ "/bin/bash", "-exo", "pipefail", "-c" ]

## Define DEFAULT args
ARG node_identity='18.19.0'
ARG npm_registry_proxy
ARG yarn_version='1.22.22'

## Copy issue
COPY docs/issue /etc/issue

## Create nodejs user space
RUN \
    groupadd --gid 1000 node \
    && useradd --uid 1000 --gid node --shell /bin/bash --create-home node

## Install LP
RUN \
    --mount=type=bind,source=./scripts,target=/usr/local/sbin,readonly \
    apt-install.sh \
## Small init process
        dumb-init \
    && node-install-approximately.sh "${node_identity}" \
## Set corporative proxy
    && node-set-proxy.sh 'npm' \
## Mock test
    && node --version \
    && npm --version \
## Install yarn
    && node-install-yarn.sh "${yarn_version}" \
## Set corporative proxy
    && node-set-proxy.sh 'yarn' \
## Remove unneeded component and cache
    && npm cache clean --force \
    && npm config --global set script-shell bash \
    && node-rm-unneeded.sh \
    && find "/usr/" -iname '*.exe' -ls -delete \
## Create link
    && ln -s "$(which node)" /usr/local/bin/nodejs \
## Deduplication cleanup
    && dedup-clean.sh /usr/ \
## Get image package dump
    && mkdir -p /usr/share/rocks \
    && ( \
        echo "# os-release" && cat /etc/os-release \
        && echo "# dpkg-query" \
        && dpkg-query -f \
            '${db:Status-Abbrev},${binary:Package},${Version},${source:Package},${Source:Version}\n' \
            -W \
        ) >/usr/share/rocks/dpkg.query \
## Check can be preview /etc/issue
    && { \
        grep -qF 'cat /etc/issue' /etc/bash.bashrc \
        || echo 'cat /etc/issue' >>/etc/bash.bashrc; \
    }

## Copy entrypoint
COPY scripts/docker-entrypoint.sh /usr/local/sbin/docker-entrypoint.sh

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                        Final image                          #
#             Second stage, compact optimize layer            #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
FROM scratch

COPY --from=base-stage / /

## Set base label
LABEL \
    maintainer="Vladislav Avdeev" \
    organization="NGRSoftlab"

## Set environment
ENV \
    LANG='en_US.UTF8' \
    LC_ALL='en_US.UTF8' \
    PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin" \
    TERM='xterm-256color' \
    TZ=Etc/UTC \
    DEBIAN_FRONTEND='noninteractive'

## Set work directory
WORKDIR /

ENTRYPOINT [ "dumb-init", "docker-entrypoint.sh" ]
CMD [ "" ]
