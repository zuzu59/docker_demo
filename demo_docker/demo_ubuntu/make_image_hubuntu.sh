#!/bin/bash
#Petit script pour fabriquer une image ubuntu personnelle pour Docker
#zf180619.1449
# source: https://doc.ubuntu-fr.org/docker

image_name="hubuntu"

docker container kill $image_name
docker container rm $image_name
docker run -d -v $(pwd):/myubuntu -ti --name="$image_name" ubuntu

read -p "il faut lancer après: /myubuntu/ubuntu_config.sh dans le container pour terminer l'installation"

docker exec -ti $image_name /bin/bash
docker commit hubuntu hubuntuimg
docker image ls -a

echo -e "

Image prête à être utilisée avec run_docker.sh

"
