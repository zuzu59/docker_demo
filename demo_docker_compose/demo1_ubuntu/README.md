# demo_docker_compose/demo1_ubuntu
zf181003.1644

Création d'un container Ubuntu dans Docker afin de pouvoir se faire un cluster de machines virtuelles Ubuntu pour faire des tests de système


Cette fois, on va utiliser la bonne pratique (docker-compose) pour construire son image et déployer son petit cluster de containers Docker Ubuntu


## Utilisation:

Pour installer Docker et docker-compose, si ce n'est pas déjà fait ?:<br>
`../../install.sh`

Pour installer une image Ubuntu améliorée et démarrer un petit cluster de 6 machines ubuntu on fait simplement:<br>
`./start.sh`

On se connecte après avec:<br>
`ssh ubuntu@hostip -p 522x`

On peut lister les machines qui tournent avec:<br>
`./list.sh`

On peut arrêter les containers avec:<br>
`docker-compose stop`

On peut redémarrer les containers avec:<br>
`docker-compose start`

On peut refaire un jeu de containers vierges sans refaire l'image source avec:<br>
`docker-compose down`
`./start.sh`

On peut effacer les containers et images utilisés ici avec:<br>
`./purges.sh`

On peut effacer TOUS les containers et images (ATTENTION, CELA EFFACE TOUT !) avec:<br>
`./all_purges.sh`


Et ma petite documentation personnelle sur le sujet:

Docker, mais c'est si simple ;-)

[https://drive.google.com/open?id=1XfmqM2_10ie_5dRs0U0oajgB7EioPJi_1ACtamhb1rY](https://drive.google.com/open?id=1XfmqM2_10ie_5dRs0U0oajgB7EioPJi_1ACtamhb1rY)
