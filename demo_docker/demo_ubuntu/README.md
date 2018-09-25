# docker_demo/demo_ubuntu
zf180925.1600

Création d'un container Ubuntu dans Docker afin de pouvoir se faire un cluster de machines virtuelles Ubuntu pour faire des tests de système

ATTENTION: cette façon de faire n'est PAS dans les bonnes pratique de Docker !<br>
Mais elle est très bien pour illustrer comme se créer une image Docker de manière manuelle, il faudra utiliser par la suite un fichier de configuration Dockerfile!

## Utilisation:

Pour installer Docker:<br>
`./install.sh`

Pour fabriquer une image Ubuntu améiorée de Docker:<br>
`./make_image_hubuntu.sh`

Pour démarrer une machine Ubuntu dans un container Docker:<br>
`./run_docker.sh machinename machineport`

On se connecte après avec:<br>
`ssh ubuntu@hostip -p machineport`

Pour démarer un cluster de 6x machines Ubuntu pour des tests système (master, test, dev, user1, user2, user3):<br>
`./go_cluster.sh`

On peut lister les machines qui tournent avec:<br>
`docker container ls -a`

On peut effacer les containers avec:<br>

`docker container kill containername`<br>
`docker container rm containername`<br>


On peut lister les images avec:<br>
`docker image ls -a`

On peut effacer les images avec:<br>
`docker image rm imagename`



Et ma petite documentation personnelle sur le sujet:

Docker, mais c'est si simple ;-)

[https://drive.google.com/open?id=1XfmqM2_10ie_5dRs0U0oajgB7EioPJi_1ACtamhb1rY](https://drive.google.com/open?id=1XfmqM2_10ie_5dRs0U0oajgB7EioPJi_1ACtamhb1rY)



zf180920.1649




