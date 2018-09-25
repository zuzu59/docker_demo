# ./demo_doker_compose/demo1_php_mysql
zf180925.1546

Petite démo pour démarrer très facilement un service PHP avec une DB MYSQL et phpmyadmin :-)

## Source: 
[https://alysivji.github.io/php-mysql-docker-containers.html](https://alysivji.github.io/php-mysql-docker-containers.html)<br>
[https://pastebin.com/uieKAH2r](https://pastebin.com/uieKAH2r)


## Utilisation:

Pour démarrer le tout:<br>
`./start.sh`

Après un certain temps, le service sera disponible sur:<br>
`http://localhost:8100/`

Et phpmyadmin sur (passwd root: my_secret_pw_shh):<br>
`http://localhost:9191/`

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
`docker-compose exec db bash`<br>
`docker-compose exec web bash`<br>
`docker-compose exec phpmyadmin sh`


## Et ma petite documentation personnelle sur le sujet:

Docker, mais c'est si simple ;-)

[https://drive.google.com/open?id=1XfmqM2_10ie_5dRs0U0oajgB7EioPJi_1ACtamhb1rY](https://drive.google.com/open?id=1XfmqM2_10ie_5dRs0U0oajgB7EioPJi_1ACtamhb1rY)



