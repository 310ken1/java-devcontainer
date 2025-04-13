#!/bin/bash
sudo apt -y update
sudo apt install -y graphviz fonts-ipafont
curl -LsSf https://github.com/plantuml/plantuml/releases/download/v1.2025.2/plantuml-1.2025.2.jar -o /home/vscode/plantuml.jar
