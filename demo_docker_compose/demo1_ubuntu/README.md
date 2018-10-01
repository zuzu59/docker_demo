# demo_docker_compose/demo1_ubuntu
zf181001.1625

Création d'un container Ubuntu dans Docker afin de pouvoir se faire un cluster de machines virtuelles Ubuntu pour faire des tests de système

Cette fois, on va utiliser la bonne pratique pour construire son image et déployer son cluster de containers Docker Ubuntu


## Utilisation:

Pour installer Docker:<br>
`./install.sh`

ATTENTION la suite est toute fausse !
zf181001.1626




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




