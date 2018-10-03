#!/bin/bash
#Petit script pour nettoyer tout le binz
#zf181003.1632

docker container rm -f -v dev test master user1 user2 user3
docker image rm -f zubuntu

./list.sh
