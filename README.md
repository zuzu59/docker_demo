# hdocker

Création d'un container Ubuntu dans Docker 

Pour installer Docker:

`./install.sh`

Pour fabriquer une image Ubuntu améiorée de Docker

`./make_image_hubuntu.sh`

Pour démarrer une machine Ubuntu dans un container Docker

`./run_docker.sh machinename machineport`

On se connecte après avec:

`ssh ubuntu@hostip -p machineport`

On peut lister les machines qui tournent avec:

`docker container ls -a`

On peut effacer les containers avec

```
docker container kill containername
docker container rm containername
```

On peut lister les images avec:

`docker image ls -a`

On peut effacer les images avec:

`docker image rm imagename`






