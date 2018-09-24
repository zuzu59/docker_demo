#!/bin/bash
#Petit script pour démarrer le binz
#zf180924.1547
# source: https://docs.google.com/document/d/1XfmqM2_10ie_5dRs0U0oajgB7EioPJi_1ACtamhb1rY/edit#

docker build -t titi:001 .
echo -e "\npress [ENTER]" ; read p

docker image ls
echo -e "\npress [ENTER]" ; read p

docker run -d -i --name="titi1" titi:001
echo -e "press [ENTER]" ; read p

docker container ls
echo -e "press [ENTER]" ; read p

docker exec -ti titi1 /bin/sh


