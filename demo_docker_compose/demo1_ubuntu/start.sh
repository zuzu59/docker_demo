#!/bin/bash
#Petit script pour démarrer le binz
#zf181003.1617
# source: 


#./all_purge.sh

docker-compose up -d
./list.sh


THEIP=$(/sbin/ifconfig ens18 | /bin/grep "inet ad" | /usr/bin/cut -f2 -d: | /usr/bin/awk '{print $1}')
echo -e "

On doit se connecter au container avec:

ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ubuntu@$THEIP -p 522x

"
read -p "press [ENTER]"
exit


docker build -t zubuntu .
./list.sh

docker run -d -i --name="titi1" zubuntu
./list.sh

docker exec -ti dev /bin/bash
docker exec -ti titi1 /bin/bash


