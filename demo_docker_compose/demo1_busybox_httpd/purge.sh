#!/bin/bash
#Petit script pour arrêter le binz et tout effacer volumes ET images comprises
#zf180924.1518
# source: https://docs.docker.com/compose/reference/up

docker-compose down --volumes --remove-orphans --rmi all
