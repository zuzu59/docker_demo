#!/bin/bash
#Petit script pour nettoyer tout le binz
#zf181001.1645

docker container kill hubuntu dev test master user1 user2 user3
docker container rm hubuntu dev test master user1 user2 user3
docker image rm ubuntu hubuntuimg
