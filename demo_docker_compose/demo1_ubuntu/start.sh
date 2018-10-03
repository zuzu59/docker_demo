#!/bin/bash
#Petit script pour démarrer le binz
#zf181003.1500
# source: 


./all_purge.sh

docker-compose up -d
./list.sh

read -p "press [ENTER]"
exit


docker build -t zubuntu .
./list.sh

docker run -d -i --name="titi1" zubuntu
./list.sh

#docker exec -ti dev /bin/bash
docker exec -ti titi1 /bin/bash


