# ./demo_doker_compose/demo1_lighttpd
zf200507.1206

Petite démo pour une utilisation simple de Docker-compose avec l'installation d'un petit serveur web

## Source:
[https://hub.docker.com/r/sebp/lighttpd/](https://hub.docker.com/r/sebp/lighttpd/)


## Utilisation:

Pour démarrer le tout:<br>
`./start.sh`

Après un certain temps, le service sera disponible sur:<br>
`http://localhost:8088/`

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

pour entrer dans le container:<br>
```
docker-compose exec web busybox sh
```
ou
```
docker exec -it demo1_busybox_httpd_web_1 busybox sh

```


## Et ma petite documentation personnelle sur le sujet:

Docker, mais c'est si simple ;-)

[https://drive.google.com/open?id=1XfmqM2_10ie_5dRs0U0oajgB7EioPJi_1ACtamhb1rY](https://drive.google.com/open?id=1XfmqM2_10ie_5dRs0U0oajgB7EioPJi_1ACtamhb1rY)
