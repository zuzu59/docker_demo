# ./demo_doker_compose/demo1_wordpress

Petite démo de démarrer un service WordPress avec Docker-compose

Source: https://docs.docker.com/compose/wordpress/#define-the-project

Utilisation:

Pour démarrer le tout:
`./start.sh`

Pour arrêter le tout:
`./stop.sh`

Pour effacer le tout:
`./purge.sh`



Commandes utiles:

pour éditer le fichier:<br>
`nano -ET4 docker-compose.yml`

pour démarrer le service:<br>
`docker-compose up`<br>
en mode background:<br>
`docker-compose up -d`

pour lister les services qui tournent:<br>
`docker-compose ps`

pour arrêter le service:<br>
`docker-compose down`

pour entrer dans le container:<br>
`docker exec -ti demo1_lighttpd_lighttpd_1 /bin/sh`



Et ma petite documentation personnelle sur le sujet:

Docker, mais c'est si simple ;-)

[https://drive.google.com/open?id=1XfmqM2_10ie_5dRs0U0oajgB7EioPJi_1ACtamhb1rY](https://drive.google.com/open?id=1XfmqM2_10ie_5dRs0U0oajgB7EioPJi_1ACtamhb1rY)



zf180924.1522
