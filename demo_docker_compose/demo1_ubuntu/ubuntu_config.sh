#!/bin/bash
#Petit script pour configurer un petit ubuntu dans un container docker
#zf181001.1711
# source: 

apt-get update
apt-get -y install htop

exit

apt-get -y install vim nano bash-completion command-not-found sudo net-tools patch git
sleep 3
patch -i /myubuntu/bashrc.diff /root/.bashrc
rm /etc/apt/apt.conf.d/docker-clean
apt-get update

apt-get -y install openssh-server
service ssh start

echo -e "tototutu\ntototutu" | passwd root
useradd --create-home -s /bin/bash ubuntu
echo -e "tototutu\ntototutu" | passwd ubuntu
adduser ubuntu sudo

