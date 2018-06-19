#!/bin/bash
#Petit script pour démarrer un petit cluster de container Ubuntu
#zf180619.1511
# source: https://doc.ubuntu-fr.org/docker

./run_docker.sh toto1 2221
./run_docker.sh toto2 2222
./run_docker.sh toto3 2223
docker container ls -a

