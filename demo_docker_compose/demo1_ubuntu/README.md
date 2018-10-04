# demo_docker_compose/demo1_ubuntu
zf181004.0911

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
`docker-compose down`<br>
`./start.sh`

On peut effacer les containers et images utilisés ici avec:<br>
`./purges.sh`

On peut effacer TOUS les containers et images (ATTENTION, CELA EFFACE TOUT !) avec:<br>
`./all_purges.sh`

## Des petits tests sympas pour bien comprendre

### Modifier son image Ubuntu que l'on a customisée
Si nous avons juste oublié un *truc* à faire dans notre image *customisée* ou que quelque chose ne marche pas bien, nous pouvons la modifier après coup à la main.<br>
Ce n'est pas une bonne pratique, car on va perdre notre configuration automatisée de notre cluster, mais par contre c'est bien pour les tests car on va gagner beaucoup de temps à éviter à chaque fois de tout reconstruire.<br>
Quand on a trouvé ce qu'il nous manquait on pourra le mettre dans les différents fichiers de configuration.

On se *connecte* alors dans le *container* à corriger avec:<br>
`docker exec -ti dev /bin/bash`<br>
On fait les modifications nécessaires et suffisantes pour que cela fonctionne.<br>
On sort du *container* avec un CTRL+D, ppuis on met à jour notre image customisée avec:<br>
`docker commit dev zubuntu`

Après il suffit de *descendre* notre mini cluster et de le *remonter* avec les commandes suivantes:<br>
`docker-compose down`<br>
`docker-compose up -d`


### Découvrir le petit réseau interne à notre mini cluster de machine Ubuntu

Toutes les machines, réciproquement les *services*, qui se trouvent dans le fichier docker-compose.yml sont *connectées* sur un réseau *interne*. Les ports externes sont *mappés* sur ce réseau internet avec un *NAT*.<br>
On peut se connecter en ssh sur la machine *dev* avec:<br>
`ssh ubuntu@localhost -p 5221`

Puis depuis la machine *dev* se connecter en ssh sur la machine *test* avec:<br>
`ssh ubuntu@test`<br>
Ici, on ne va pas mettre le port externe mais interne de la machine !

On peut aussi installer l'utilitaire *nmap* de scanning de port en faisant:<br>
`sudo apt install nmap`

Et scanner le réseau interne de notre petit cluster Ubuntu avec la commande:<br>
`nmap -sP -PA21,22,25,3389 192.168.192.1/24`

On verra alors toutes les machines de notre cluster.







## Et ma petite documentation personnelle sur le sujet:

Docker, mais c'est si simple ;-)

[https://drive.google.com/open?id=1XfmqM2_10ie_5dRs0U0oajgB7EioPJi_1ACtamhb1rY](https://drive.google.com/open?id=1XfmqM2_10ie_5dRs0U0oajgB7EioPJi_1ACtamhb1rY)
