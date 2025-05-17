FROM ubuntu:25.04

# パッケージインストール
RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
    --mount=type=cache,target=/var/lib/apt,sharing=locked \
    apt update && apt install --no-install-recommends -y \
    locales \
    sudo \
    curl \
    git \
    openjdk-21-jdk-headless \
    gradle \
    maven \
    graphviz \
    fonts-ipafont \
    fonts-noto && locale-gen ja_JP.UTF-8 && update-locale LANG=ja_JP.UTF-8

ENV LANG=ja_JP.UTF-8 \
    LANGUAGE=ja_JP:ja \
    LC_ALL=ja_JP.UTF-8

# PlantUMLインストール
ARG plantuml="https://github.com/plantuml/plantuml/releases/download/v1.2025.2/plantuml-1.2025.2.jar"
RUN curl -LsSf ${plantuml} -o /usr/local/bin/plantuml.jar
