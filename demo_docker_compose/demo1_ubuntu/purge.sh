#!/bin/bash
#Petit script pour nettoyer tout le binz
#zf180110


docker container kill titi1
docker container rm titi1
docker image rm titi:001

docker container ls -a
docker image ls
