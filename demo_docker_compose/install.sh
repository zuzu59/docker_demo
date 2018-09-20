#!/bin/bash
#Petit script pour installer Docker-compose
#zf180920.1655
# source: https://docs.docker.com/compose/install/#install-compose

sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

