#!/bin/bash
#Petit script pour arrêter, effacer, démarrer et entrer dans un nouveau container ubuntu
#zf180618.1538
# source: https://doc.ubuntu-fr.org/docker

docker container stop toto1
docker container rm toto1
docker run -d -p 2221:22 -v $(pwd):/myubuntu -ti --name="toto1" ubuntu
docker exec -ti toto1 /bin/bash

