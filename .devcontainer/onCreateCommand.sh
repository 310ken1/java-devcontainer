#!/bin/bash
apt -y update
apt install -y \
    sudo \
    curl \
    git \
    graphviz \
    fonts-ipafont
apt clean
rm -rf /var/lib/apt/lists/*

cd ~
# Install PlantUML
plantuml=https://github.com/plantuml/plantuml/releases/download/v1.2025.2/plantuml-1.2025.2.jar
curl -LsSf $plantuml -o ~/plantuml.jar
