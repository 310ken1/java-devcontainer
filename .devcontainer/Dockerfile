FROM ubuntu:25.04

# パッケージインストール
RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
    --mount=type=cache,target=/var/lib/apt,sharing=locked \
    apt update && apt install --no-install-recommends -y \
    locales \
    ca-certificates \
    sudo \
    curl \
    zip \
    unzip \
    git \
    graphviz \
    fonts-ipafont \
    fonts-noto && locale-gen ja_JP.UTF-8 && update-locale LANG=ja_JP.UTF-8

ENV LANG=ja_JP.UTF-8 \
    LANGUAGE=ja_JP:ja \
    LC_ALL=ja_JP.UTF-8

# SDKMAN! のインストール
RUN curl -s "https://get.sdkman.io" | bash
RUN bash -c ". $HOME/.sdkman/bin/sdkman-init.sh && \
    sdk install java && \
    sdk install gradle && \
    sdk install maven 3.9.10"
ENV SDKMAN_DIR=/root/.sdkman
ENV PATH=$SDKMAN_DIR/candidates/gradle/current/bin:$PATH

# PlantUMLインストール
ARG plantuml="https://github.com/plantuml/plantuml/releases/download/v1.2025.2/plantuml-1.2025.2.jar"
RUN curl -LsSf ${plantuml} -o /usr/local/bin/plantuml.jar
