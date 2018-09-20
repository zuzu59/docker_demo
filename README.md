# docker_demo

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


Et ma petite documentation personnelle sur le sujet:

Docker, mais c'est si simple ;-)

[https://drive.google.com/open?id=1XfmqM2_10ie_5dRs0U0oajgB7EioPJi_1ACtamhb1rY](https://drive.google.com/open?id=1XfmqM2_10ie_5dRs0U0oajgB7EioPJi_1ACtamhb1rY)



zf180920.1649




