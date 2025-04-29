FROM ubuntu:25.04

# パッケージインストール
RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
    --mount=type=cache,target=/var/lib/apt,sharing=locked \
    apt-get update && apt-get install --no-install-recommends -y \
    sudo \
    curl \
    git \
    openjdk-21-jdk-headless \
    gradle \
    graphviz \
    fonts-ipafont

# PlantUMLインストール
ARG plantuml="https://github.com/plantuml/plantuml/releases/download/v1.2025.2/plantuml-1.2025.2.jar"
RUN curl -LsSf ${plantuml} -o /usr/local/bin/plantuml.jar
