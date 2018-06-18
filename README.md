# hdocker

Création d'un container Ubuntu dans Docker 

Pour installer Docker:

./install.sh

Pour démarrer une machine Ubuntu dans un container Docker

./run_docker.sh machinename machineport

Puis:

./myubuntu/ubuntu_config.sh

Puis: CTRL+D

On se connecte après avec:

ssh ubuntu@localhost -p machineport

On peut lister les machines qui tournent avec:

docker container ls -a






