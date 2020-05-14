#!/bin/bash
#Petit script pour démarrer le binz
#zf181003.1617, zf200514.1527
# source:


#./all_purge.sh

docker-compose up -d
./list.sh


THEIP=$(/sbin/ifconfig ens18 | /bin/grep "inet ad" | /usr/bin/cut -f2 -d: | /usr/bin/awk '{print $1}')
echo -e "

On peut entrer dans un container avec:

docker-compose exec <nom du container> /bin/bash
docker-compose exec dev /bin/bash

Si on veut se connecter en ssh au container, il faut installer dans chaque container:

apt -y install openssh-server

Après on peut se connecter au container avec:

ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ubuntu@$THEIP -p 522x
ssh -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no ubuntu@localhost -p 5221

Pour installer mes petits utilitaires très facilement:

/myubuntu/install_utils_a_zuzu.sh

"

read -p "press [ENTER]"

docker-compose exec dev /bin/bash

exit


docker build -t zubuntu .
./list.sh

docker run -d -i --name="titi1" zubuntu
./list.sh

docker exec -ti dev /bin/bash
docker exec -ti titi1 /bin/bash
