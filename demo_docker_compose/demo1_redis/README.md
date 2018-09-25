# ./demo_doker_compose/demo1_redis
zf180925.1551

Petite démo d'utilisation de Docker-compose avec l'installation d'un petit serveur web et REDIS

## Source:
[https://docs.docker.com/compose/gettingstarted/](https://docs.docker.com/compose/gettingstarted/)


## Utilisation:

Pour démarrer le tout:<br>
`./start.sh`

Après un certain temps, le service sera disponible sur:<br>
`http://localhost:5000/`

Pour arrêter le tout:<br>
`./stop.sh`

Pour effacer le tout:<br>
`./purge.sh`


## Commandes utiles:

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

pour entrer dans les containers:<br>
`docker-compose exec web sh`
`docker-compose exec redis sh`


## Et ma petite documentation personnelle sur le sujet:

Docker, mais c'est si simple ;-)

[https://drive.google.com/open?id=1XfmqM2_10ie_5dRs0U0oajgB7EioPJi_1ACtamhb1rY](https://drive.google.com/open?id=1XfmqM2_10ie_5dRs0U0oajgB7EioPJi_1ACtamhb1rY)




