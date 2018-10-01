#!/bin/bash
#Petit script pour arrêter, effacer, démarrer
#zf180926.1451
# source: https://doc.ubuntu-fr.org/docker

THEIP=$(/sbin/ifconfig ens18 | /bin/grep "inet ad" | /usr/bin/cut -f2 -d: | /usr/bin/awk '{print $1}')

echo "usage: ./run_docker.sh machinename machineport"
#read -p "appuyer une touche pour continuer"

docker container kill $1
docker container rm $1
docker run -d -p $2:22 -v $(pwd):/myubuntu -h $1 -ti --name="$1" hubuntuimg "/myubuntu/autostart.sh"
#docker exec -ti $1 /bin/bash

echo -e " 

On doit se connecter au container avec:

ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ubuntu@$THEIP -p $2

"

