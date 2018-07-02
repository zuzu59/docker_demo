#!/bin/bash
#Petit script pour démarrer un petit cluster de container Ubuntu
#zf180702.1049
# source: https://doc.ubuntu-fr.org/docker

./run_docker.sh master 5221
./run_docker.sh test 5222
./run_docker.sh dev 5223
./run_docker.sh user1 5224
./run_docker.sh user2 5225
./run_docker.sh user3 5226

docker container ls -a

