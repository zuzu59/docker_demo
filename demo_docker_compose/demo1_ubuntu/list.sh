#!/bin/bash
#Petit script pour lister tout le binz
#zf181003.1043


echo -e "\n---Liste des containers"
docker container ls -a
echo -e "\n---Liste des images"
docker image ls
echo -e "\n"

