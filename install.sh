#!/bin/bash
#Petit script pour installer tout le binz
#zf180618.1631
# source: https://doc.ubuntu-fr.org/docker

sudo apt-get update
sudo apt-get -y install python-minimal
./install_docker.sh
sudo usermod -aG docker $LOGNAME

echo ""
echo "vous devez faire un logoff/logon pour que les modifications de groups fonctionne !"
echo ""

