#!/bin/bash
#Petit script pour nettoyer tout le binz
#ATTENTION, cela purge VRAIMENT tout le binz de Docker !
#zf181003.1054

./list.sh
read -p "Etes-vous certain de vouloir tout effacer ?"

docker container rm -f -v $(docker container ls -a -q)
docker image rm -f $(docker image ls -a -q)

./list.sh
