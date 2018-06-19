#!/bin/bash
#Petit script pour démarrer quelque chose lors du démarrage du container
#ATENTION, il ne faut pas que ce script s'arrête autrement le container meurt, c'est pourquoi il a une press any key à la fin !
#zf180619.1427
# source: https://doc.ubuntu-fr.org/docker

service ssh start
read -p "Press any key to continue..."
