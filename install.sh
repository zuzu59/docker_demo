#!/bin/bash
#Petit script pour installer tout le binz
#zf1809.1631
# source: https://doc.ubuntu-fr.org/docker
# source: https://docs.docker.com/compose/install/#install-compose

echo -e "\Installation de docker..."
sudo apt-get update
sudo apt-get -y install python-minimal
./install_docker.sh
sudo usermod -aG docker $LOGNAME

echo -e "\nInstallation de docker-compose..."
sudo curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version

echo -e "\nIMPORTANT !\n\nVous devez faire un logoff/logon pour que les modifications de groups fonctionnent !\n"

