#!/bin/bash
#Petit script pour arrêter, effacer, démarrer et entrer dans un nouveau container ubuntu
#zf180618.1538
# source: https://doc.ubuntu-fr.org/docker


echo "usage: ./run_docker machinename machineport"

docker container stop $1
docker container rm $1
docker run -d -p $2:22 -v $(pwd):/myubuntu -ti --name="$1" ubuntu
docker exec -ti $1 /bin/bash

