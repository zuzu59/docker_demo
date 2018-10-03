#!/bin/bash
#Petit script pour démarrer le binz
#zf181003.1050
# source: 


./purge.sh

#docker build -t zubuntu .
docker-compose up
./list.sh

read -p "press [ENTER]"
exit




docker image ls
echo -e "\npress [ENTER]" ; read p

#docker run -d -i --name="titi1" zubuntu
#echo -e "press [ENTER]" ; read p

docker container ls -a
echo -e "press [ENTER]" ; read p

docker exec -ti dev /bin/bash


