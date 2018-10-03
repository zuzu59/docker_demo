#!/bin/bash
#Petit script pour nettoyer tout le binz
#zf180110


docker container kill dev
docker container rm dev
docker image rm -f demo1_ubuntu_zubuntu

docker container ls -a
docker image ls
