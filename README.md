<!-- markdownlint-disable MD033 MD041 -->
<p><img src="https://static.tildacdn.com/tild3733-3430-4331-a637-336233396534/logo.svg" alt="NGRSOFTLAB logo" title="NGR" align="right" height="60" /></p>
<!-- markdownlint-enable MD033 MD041 -->

# Node.js

<!-- markdownlint-disable MD033 -->
<div>
  <h4 align="center">
    <img src="https://img.shields.io/badge/Dive%20efficiency-100%25-brightgreen.svg?logo=Docker&style=plastic" alt="Dive efficiency"/>
    <img src="https://img.shields.io/badge/Made%20with-%E2%9D%A4%EF%B8%8F-9cf?style=plastic" alt="Made with love"/>
    <img src="https://img.shields.io/badge/Powered%20by-Docker-blue?logo=Docker&style=plastic" alt="Powered by Docker"/>
    <img src="https://shields.io/badge/NGR -Team-yellow?style=plastic&logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGZpbGw9Im5vbmUiIHZpZXdCb3g9IjIyLjcgMCA1MS45IDUxLjciPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNNzQuNSAwSDYzLjhsMy42IDMuNWMuNy43LjcgMS45IDAgMi43LS43LjctMS45LjctMi42IDBMNTguOSAwSDUzbDE0LjUgMTMuOWMuNy43LjcgMS45IDAgMi43LS43LjctMS45LjctMi42IDBMNDkgMGgtNi44bDI1LjMgMjQuM2MuNy43LjcgMS45IDAgMi43LS43LjctMS45LjctMi42IDBMMzkgMGgtNy43bDM2LjEgMzQuN2MuNy43LjcgMS45IDAgMi42cy0xLjkuNy0yLjYgMEwyOSAwYy0zLjUuNC02LjMgMy40LTYuMyA3djQ0LjdoMTAuNmwtMy42LTMuNGMtLjctLjctLjctMS45IDAtMi42czEuOS0uNyAyLjcgMGw1LjggNmg1LjlMMjkuNyAzNy45Yy0uNy0uNy0uNy0xLjkgMC0yLjcuNy0uNyAxLjktLjcgMi43IDBsMTUuOCAxNi40SDU1TDI5LjggMjcuNGMtLjctLjctLjctMS45IDAtMi43LjctLjcgMS45LS43IDIuNyAwbDI1LjggMjYuOEg2NkwyOS45IDE2LjljLS43LS43LS43LTEuOSAwLTIuNnMxLjktLjcgMi43IDBsMzUuNyAzNy4yYzMuNS0uMyA2LjMtMy4zIDYuMy03VjB6IiBmaWxsPSIjRjhBRDAwIi8+PC9zdmc+" alt="NGR Team" />
  </h4>
</div>

<div align="center">

![Node.js image](docs/images/logo.svg)
</div>

<div align="center"> <sub> Ascii svg art by <a href="https://GitHub.com/martinthomson/aasvg">aasvg</a>. </sub> </div>

<!-- markdownlint-enable MD033 -->

## Description

**Node container image** - это реализация легковесной сборки ЯП Node.js на базе Astra Linux

Присоединяйтесь к нашим социальным сетям:

<!-- markdownlint-disable MD033 -->

<div class="badges-row-public">
  <h4 align="center">
    <a href="https://t.me/NGR_Softlab">
      <img src="https://shields.io/badge/ngr-telegram-blue?logo=telegram&style=for-the-badge" alt="NGR Social Telegram" height="40" />
    </a>
    &emsp; &emsp; &emsp;
    <a href="https://www.ngrsoftlab.ru/?utm_source=tg&utm_medium=start" >
      <img src="https://shields.io/badge/ngr-web--page-yellow?style=for-the-badge&logo=data:image/svg%2bxml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGZpbGw9Im5vbmUiIHZpZXdCb3g9IjIyLjcgMCA1MS45IDUxLjciPjxwYXRoIGZpbGwtcnVsZT0iZXZlbm9kZCIgY2xpcC1ydWxlPSJldmVub2RkIiBkPSJNNzQuNSAwSDYzLjhsMy42IDMuNWMuNy43LjcgMS45IDAgMi43LS43LjctMS45LjctMi42IDBMNTguOSAwSDUzbDE0LjUgMTMuOWMuNy43LjcgMS45IDAgMi43LS43LjctMS45LjctMi42IDBMNDkgMGgtNi44bDI1LjMgMjQuM2MuNy43LjcgMS45IDAgMi43LS43LjctMS45LjctMi42IDBMMzkgMGgtNy43bDM2LjEgMzQuN2MuNy43LjcgMS45IDAgMi42cy0xLjkuNy0yLjYgMEwyOSAwYy0zLjUuNC02LjMgMy40LTYuMyA3djQ0LjdoMTAuNmwtMy42LTMuNGMtLjctLjctLjctMS45IDAtMi42czEuOS0uNyAyLjcgMGw1LjggNmg1LjlMMjkuNyAzNy45Yy0uNy0uNy0uNy0xLjkgMC0yLjcuNy0uNyAxLjktLjcgMi43IDBsMTUuOCAxNi40SDU1TDI5LjggMjcuNGMtLjctLjctLjctMS45IDAtMi43LjctLjcgMS45LS43IDIuNyAwbDI1LjggMjYuOEg2NkwyOS45IDE2LjljLS43LS43LS43LTEuOSAwLTIuNnMxLjktLjcgMi43IDBsMzUuNyAzNy4yYzMuNS0uMyA2LjMtMy4zIDYuMy03VjB6IiBmaWxsPSIjRjhBRDAwIi8+PC9zdmc+" alt="NGR Social Media" height="40" />
    </a>
  </h4>
</div>

<!-- markdownlint-enable MD033 -->

## Contents

- [Node.js](#nodejs)
  - [Description](#description)
  - [Contents](#contents)
  - [Requirements](#requirements)
  - [Supported Technologies](#supported-technologies)
  - [What it is](#what-it-is)
  - [How to work with](#how-to-work-with)
    - [Container variables](#container-variables)
    - [Advanced environment](#advanced-environment)
  - [How to use this image](#how-to-use-this-image)
  - [How to test local](#how-to-test-local)
  - [Scratch](#scratch)
  - [Miscellaneous](#miscellaneous)
    - [Cya!](#cya)

## [Requirements](#contents)

- Docker >= 28.1.1 (возможно работает в предыдущих версиях, но мы не можем это гарантировать)

## [Supported Technologies](#contents)

<!-- markdownlint-disable MD033 -->
|                                                 OS                                                  |                                                                                                        Node.js                                                                                                         | Status             |
| :-------------------------------------------------------------------------------------------------: | :--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------: | :----------------- |
| ![Astra 1.7](https://img.shields.io/badge/Astra-1.7.x-00ADD8?style=flat&logo=astra&logoColor=white) |                                                        ![Node.js 10](https://img.shields.io/badge/node.js-10.24-6DA55F?style=flat&logo=node.js&logoColor=white)                                                        | ✅ Fully supported |
| ![Astra 1.8](https://img.shields.io/badge/Astra-1.8.x-00ADD8?style=flat&logo=astra&logoColor=white) | ![Node.js 18](https://img.shields.io/badge/node.js-18.19-6DA55F?style=flat&logo=node.js&logoColor=white) <br> ![Node.js 20](https://img.shields.io/badge/node.js-20.18-6DA55F?style=flat&logo=node.js&logoColor=white) | ✅ Fully supported |

<div align="center"> <sub> Таблица 1. Поддерживаемые ОС-ы. </sub> </div>
<p>&nbsp;</p>
<!-- markdownlint-enable MD033 -->

## [What it is](#contents)

Node.js - это программная платформа для масштабируемых серверных и сетевых приложений. Приложения Node.js написаны на JavaScript и могут быть запущены в среде выполнения Node.js на Mac OS X, Windows и Linux без изменений. Приложения Node.js разработаны для максимизации пропускной способности и эффективности, используя неблокирующий ввод-вывод и асинхронные события. Приложения Node.js работают в однопоточном режиме, хотя Node.js использует несколько потоков для файловых и сетевых событий. Node.js обычно используется для приложений реального времени из-за его асинхронной природы.

Node.js внутренне использует движок Google V8 JavaScript для выполнения кода; большой процент базовых модулей написан на JavaScript. Node.js содержит встроенную библиотеку асинхронного ввода-вывода для файловой, сокетной и HTTP-связи. Поддержка HTTP и сокетов позволяет Node.js выступать в качестве веб-сервера без дополнительного программного обеспечения, такого как Apache. Образ построен на основе отечественной ОС Astra Linux

## [How to work with](#contents)

Для начала работы необходимо установить [pre-commit](https://pre-commit.com/) и хуки

```console
$ pip install pre-commit
$ pre-commit --version

pre-commit 4.2.0

$ pre-commit install

pre-commit installed at .git/hooks/pre-commit
pre-commit installed at .git/hooks/commit-msg
pre-commit installed at .git/hooks/pre-push
```

> [!warning]
> Чтобы проверить свои изменения, воспользуйтесь командой `pre-commit run --all-files`.
> Чтобы проверить конкретную задачу, воспользуетесь командой `pre-commit run <target> --all-files`.
> Если Вы понимаете что творите и хотите пропустить проверку `pre-commit`-ом воспользуйтесь `--no-verify`, пример `git commit -m "Добавил изменения и не хочу проверки" --no-verify`

Существует несколько способов как можно взаимодействовать со сборкой образа. Благодаря скрипту[^2] может существовать 3 способа передачи аргумента в `Dockerfile`:

1. Передача 'примерной' версии. В результате передачи данной строки, скрипт [попытается найти](scripts/node-install-approximately.sh#L74-80) точную версии, если таковой нет, то будет возвращена пустая строка

    ```console
    ## Export Node.js version for 1.7.5
    $ export NODEJS_VERSION='10.24-astra1.7.5-slim'

    ## Node.js image: 194MB
    docker build \
      --progress=plain \
      --build-arg node_identity=10.24 \
      --build-arg image_version=1.7.5-slim \
      -t node:"${NODEJS_VERSION}" \
      .

    .. build ...
    ```

2. Передача точной версии

    ```console
    ## Export Node.js version for 1.8.2
    $ export NODEJS_VERSION='18.19-astra1.8.2-slim'

    ## Node.js build utils image: 314MB
    docker build \
      --progress=plain \
      --build-arg node_identity='18.19.0+dfsg-6~deb12u1+ci2+b1' \
      --build-arg image_version=1.8.2-slim \
      -t node:"${NODEJS_VERSION}" \
      .

    .. build ...
    ```

3. Передача ссылки, на заранее собранный из исходников Node.js

    ```console
    ## Export Node.js version for 1.8.2
    $ export NODEJS_VERSION='20.18-astra1.8.2-slim'

    ## Node.js build utils image: 198MB
    docker build \
      --progress=plain \
      --build-arg node_identity=https://example-registry.com/repository/node/node-v20.18.0-linux-amd64.tar.gz \
      --build-arg image_version=1.8.2-slim \
      -t node:"${NODEJS_VERSION}" \
      .

    .. build ...
    ```

> [!tip]
> Проверка доступных версий приложения -
> `apt show nodejs`,
> `apt-cache policy nodejs`,
> `apt-cache show nodejs`

Работа с прокси репозиториями. Логика работы тоже является 'плавающей'[^3] т.е. позволяет передавать разный набор параметров для Вашего удобства:

1. C `npm_registry_proxy`:

    ```console
    ## Export Node.js version for 1.8.2
    $ export NODEJS_VERSION='18.19-astra1.8.2-slim'

    docker build \
      --progress=plain \
      --build-arg image_registry=example-container.registry.com/ \
      --build-arg npm_registry_proxy=https://example-registry.com/repository/npm-proxy \
      --build-arg node_identity=18.19.0 \
      --build-arg image_version=1.8.2-slim \
      -t node:"${NODEJS_VERSION}" \
      .

    .. build ...
    ```

2. C `package_registry_proxy`:

    ```console
    ## Export Node.js version for 1.8.2
    $ export NODEJS_VERSION='18.19-astra1.8.2-slim'

    docker build \
      --progress=plain \
      --build-arg image_registry=example-container.registry.com/ \
      --build-arg package_registry_proxy=https://example-registry.com/repository/npm-proxy \
      --build-arg node_identity=18.19.0 \
      --build-arg image_version=1.8.2-slim \
      -t node:"${NODEJS_VERSION}" \
      .

    .. build ...
    ```

### [Container variables](#contents)

| Имя                  | Значение по умолчанию |  Тип   |                                                    Описание |
| :------------------- | :-------------------: | :----: | ----------------------------------------------------------: |
| `image_name`         |         astra         | string |                                                 Имя образа. |
| `image_registry`     |          ''           | string |                                Адрес до реестра образа[^1]. |
| `image_version`      |      1.8.2-slim       | string |                                              Версия образа. |
| `npm_registry_proxy` |          ''           | string | Переменная, для установки своего проксирующего репозитория. |
| `node_identity`      |        18.19.0        | string |                               Ожидаемая версия Node.js[^2]. |
| `yarn_version`       |        1.22.22        | string |                               Ожидаемая версия Yarn v1[^4]. |

<!-- markdownlint-disable MD033 -->
<div align="center"> <sub> Таблица 2. Переопределяемые аргументы для сборки образа. </sub> </div>
<p>&nbsp;</p>
<!-- markdownlint-enable MD033 -->

### [Advanced environment](#contents)

В результате сборки базового образа идёт наполнение файла `/etc/environment`. В нём отражены общие переменные, которые могут использоваться в сборочных образах приложений

1. Пример переменных для образа `20.18` установленного из удаленного и скомпилированного Node.js

    ```console
    $ cat /etc/environment

    NODE_REVISION=Installed-from-URL
    BEGIN_BUILD_IN_EPOCH=1746545461
    NODE_MAJOR_MINOR_PATCH_VERSION=20.18.0
    NODE_MAJOR_MINOR_VERSION=20.18
    ```

2. Пример переменных для образа `18.19` из репозиториев Astra Linux

    ```console
    $ cat /etc/environment

    NODE_REVISION=18.19.0+dfsg-6~deb12u1+ci2+b1
    BEGIN_BUILD_IN_EPOCH=1746544357
    NODE_MAJOR_MINOR_PATCH_VERSION=18.19.0
    NODE_MAJOR_MINOR_VERSION=18.19
    ```

3. Пример переменных для образа `10.24` из репозиториев Astra Linux

    ```console
    $ cat /etc/environment

    NODE_REVISION=10.24.0~dfsg-1~deb10u3
    BEGIN_BUILD_IN_EPOCH=1746547096
    NODE_MAJOR_MINOR_PATCH_VERSION=10.24.0
    NODE_MAJOR_MINOR_VERSION=10.24
    ```

## [How to use this image](#contents)

Для того чтобы начать использовать данный образ, создайте `Dockerfile` с простыми настройками

```Dockerfile
FROM node:18.19-astra1.8.2-slim

WORKDIR /usr/src/app

COPY package*.json ./

USER node

ENV NPM_CONFIG_LOGLEVEL info

RUN npm install

COPY --chown=node:node . .

EXPOSE 8080

CMD [ "node", "app.js" ]
```

Затем соберите и запустите полученный образ

```console
$ docker build -t my-node-app .
$ docker run -it --rm --name my-running-app my-node-app

...run logic...
```

Для того, чтобы запустить одиночный файл Node-ы, Вы можете использовать следующую команду

```console
$ docker run -it --rm --name my-running-script -v "$PWD":/usr/src/app -w /usr/src/app node:18.19-astra1.8.2-slim node your-daemon-or-script.js

...run logic...
```

## [How to test local](#contents)

Простой тест:

```shell
docker run --rm node:18.19-astra1.8.2-slim node -e "console.log('Hello from Node.js')"
```

## [Scratch](#contents)

Данный раздел будет обеспечивать краткие вводные для того, чтобы Вы в дальнейшем могла проектировать свои `Scratch` сборки, на примере небольшой утилиты. Все, что демонстрируется, также подкреплено и всеми задействованными скриптами [сборочными](scripts/) или специализированными для [сборки](scratch/) через `scratch`. Все манипуляции поделены на определенное количество 'шагов' для которых будут даны краткие комментарии:

1. Первым этапом устанавливаем целевую программу, оптимизируем бинарный файл Node.js и формируем базовую структуру, которая будет перенесена в `Scratch`

    ```Dockerfile
    ## Install base package
    RUN npm install --global aasvg@"v0.4.2"

    ## Install build components
    RUN \
        --mount=type=bind,source=./scripts,target=/usr/local/sbin,readonly \
        apt-install.sh \
            build-essential

    ## Change path to work dir
    WORKDIR /opt

    ## Prepare structure to scratch image
    RUN \
    ## Directory structure and permissions
        mkdir -p \
            /base/bin \
            /base/etc \
            /base/tmp \
            /base/sbin \
            /base/root \
            /base/usr/share \
            /base/usr/local/{bin,lib/node_modules} \
        && chmod 700 /base/root \
        && chown root:root /base/root \
        && chmod 1777 /base/tmp \
    ## UID and GID
        && echo 'root:x:0:' > /base/etc/group \
        && echo 'root:x:0:0:root:/root:/sbin/nologin' > /base/etc/passwd \
    ## Nologin binary
        && echo 'int main() { return 1; }' > nologin.c \
        && gcc -Os -no-pie -static -std=gnu99 -s -Wall -Werror -o /base/sbin/nologin nologin.c

    ## Optimize node
    RUN \
        strip --verbose --strip-debug --strip-unneeded "$(which node)"
    ```

2. Вторым этапом переносим основную файловую структуру, для оптимальной и минимальной работы приложения

    ```Dockerfile
    ## Copy depended binary
    # hadolint ignore=SC1091
    RUN \
        --mount=type=bind,source=./scratch,target=/usr/local/sbin,readonly \
    ## Execute transfer ldd /usr/bin
        copy-bin.sh \
            --prefix "/base" \
            --ldd "/usr/bin/node" \
            --links "/bin:/sbin:/usr/bin:/usr/sbin" \
        && copy-bin.sh \
            --prefix "/base" \
            --ldd "/usr/bin/env" \
            --links "/bin:/sbin:/usr/bin:/usr/sbin" \
    ## Copy main libs
        && cp -R /usr/share/nodejs /base/usr/share/nodejs \
        && cp -P /usr/share/node_modules /base//usr/share/node_modules \
    ## Copy aasvg
        && ln -nfs /usr/local/lib/node_modules/aasvg/main.js /base/usr/local/bin/aasvg  \
        && cp -R /usr/local/lib/node_modules/aasvg /base/usr/local/lib/node_modules/aasvg
    ```

3. Третьим этапом происходит интеграция со Scratch образом

    ```Dockerfile
    COPY --from=base-stage /base/ /

    ## Set environment
    ENV \
        PATH="/usr/bin:/sbin:/bin:/usr/local/bin" \
        LANG=C.UTF-8

    ENTRYPOINT [ "aasvg" ]
    CMD [ "-h" ]
    ```

Пример сборки: `docker build --progress=plain -f Dockerfile-scratch -t aasvg:v0.4.2 .`

Проверить работу можем при помощи команды: `docker run --rm -i aasvg:v0.4.2 --source --embed < docs/ascii.txt`

Полный `Dockerfile`:

```Dockerfile
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                         Base image                          #
#               First stage, prepare environment              #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
FROM node:18.10-astra1.8.2 AS base-stage

SHELL [ "/bin/bash", "-exo", "pipefail", "-c" ]

## Install base package
RUN npm install --global aasvg@"v0.4.2"

## Install build components
RUN \
    --mount=type=bind,source=./scripts,target=/usr/local/sbin,readonly \
    apt-install.sh \
        build-essential

## Change path to work dir
WORKDIR /opt

## Prepare structure to scratch image
RUN \
## Directory structure and permissions
    mkdir -p \
        /base/bin \
        /base/etc \
        /base/tmp \
        /base/sbin \
        /base/root \
        /base/usr/share \
        /base/usr/local/{bin,lib/node_modules} \
    && chmod 700 /base/root \
    && chown root:root /base/root \
    && chmod 1777 /base/tmp \
## UID and GID
    && echo 'root:x:0:' > /base/etc/group \
    && echo 'root:x:0:0:root:/root:/sbin/nologin' > /base/etc/passwd \
## Nologin binary
    && echo 'int main() { return 1; }' > nologin.c \
    && gcc -Os -no-pie -static -std=gnu99 -s -Wall -Werror -o /base/sbin/nologin nologin.c

## Optimize node
RUN \
    strip --verbose --strip-debug --strip-unneeded "$(which node)"

## Copy depended binary
# hadolint ignore=SC1091
RUN \
    --mount=type=bind,source=./scratch,target=/usr/local/sbin,readonly \
## Execute transfer ldd /usr/bin
    copy-bin.sh \
        --prefix "/base" \
        --ldd "/usr/bin/node" \
        --links "/bin:/sbin:/usr/bin:/usr/sbin" \
    && copy-bin.sh \
        --prefix "/base" \
        --ldd "/usr/bin/env" \
        --links "/bin:/sbin:/usr/bin:/usr/sbin" \
## Copy main libs
    && cp -R /usr/share/nodejs /base/usr/share/nodejs \
    && cp -P /usr/share/node_modules /base//usr/share/node_modules \
## Copy aasvg
    && ln -nfs /usr/local/lib/node_modules/aasvg/main.js /base/usr/local/bin/aasvg  \
    && cp -R /usr/local/lib/node_modules/aasvg /base/usr/local/lib/node_modules/aasvg

# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
#                        Final image                          #
#              Second stage, compact optimize layer           #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
FROM scratch

COPY --from=base-stage /base/ /

## Set environment
ENV \
    PATH="/usr/bin:/sbin:/bin:/usr/local/bin" \
    LANG=C.UTF-8

ENTRYPOINT [ "aasvg" ]
CMD [ "-h" ]
```

## [Miscellaneous](#contents)

Лого для проекта создано при помощи [`aasvg`](https://github.com/martinthomson/aasvg) проекта. Вы можете создать такое же и/или модифицировать имеющееся. Для этого воспользуйтесь [сайтом](https://patorjk.com/software/taag/#p=display&f=Doom) или установите `figlet`. Если Вы используете способ с установкой `figlet`, то вдобавок необходимо сказать необходимый шрифт, например я использую `Doom`. Далее, необходимо воспользоваться `aasvg` и конвертировать `ascii` арт в `svg`. Обратите внимание - по умолчанию будет svg в красном цвете, чтобы изменить цвет, необходимо изменить его определение [тут](docs/images/logo.svg#L68)

```console
$ curl 'http://www.figlet.org/fonts/doom.flf' -o /usr/share/figlet/doom.flf
$ curl 'http://www.figlet.org/fonts/larry3d.flf' -o /usr/share/figlet/larry3d.flf
$ figlet -f doom 'NodeJs'

 _   _           _        ___
| \ | |         | |      |_  |
|  \| | ___   __| | ___    | |___
| . ` |/ _ \ / _` |/ _ \   | / __|
| |\  | (_) | (_| |  __/\__/ \__ \
\_| \_/\___/ \__,_|\___\____/|___/

$ aasvg --source --embed < ./docs/ascii.txt > docs/images/logo.svg
```

<!-- markdownlint-disable MD033 MD041 MD051 -->
<table align="center"><tr><td align="center" width="9999">
<img src="docs/images/cya.png" align="center" alt="Rocket turtle">

<div align="center"> <sub> Rocket Turtle под авторством <a href="https://chat.qwen.ai/">qwen.ai</a>. </sub> </div>

### [Cya!](#contents)

</td></tr></table>
<!-- markdownlint-enable MD033 MD041 MD051 -->

---

[^1]: 🛠️ Например можно использовать свой приватный реестр образов: `--build-arg image_registry=my-container-registry:1111/`
[^2]: 🛠️ За счёт скрипта [`node-install-approximately.sh`](scripts/node-install-approximately.sh) нас может не волновать полная версия Node.js, мы можем передавать лишь приблизительно желаемую версию, а скрипт позаботится чтобы была выбрана последняя и актуальная из списка
[^3]: 🛠️ За счёт скрипта [`node-set-proxy.sh`](scripts/node-set-proxy.sh) мы можем пользоваться и другим набором аргументов, таких как: `npm_registry_proxy` или `package_registry_proxy`
[^4]: 🛠️ За счёт скрипта [`node-install-yarn.sh`](scripts/node-install-yarn.sh) мы можем динамически устанавливать любую версию [yarn](https://classic.yarnpkg.com/lang/en/) из реестра пакетов npm
