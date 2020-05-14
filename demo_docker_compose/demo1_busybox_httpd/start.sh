#!/bin/bash
#Petit script pour démarrer le binz
#zf180924.1515, zf200507.2258
# source: https://docs.docker.com/compose/reference/up

docker-compose up -d

echo -e "

w3m http://localhost:8088

"

docker-compose logs -f



