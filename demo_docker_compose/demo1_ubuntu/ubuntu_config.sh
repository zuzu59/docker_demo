#!/bin/bash
#Petit script pour configurer un petit ubuntu dans un container docker
#zf181003.1550, zf200514.1515
# source:

apt update
apt -y install htop patch
#exit

apt -y install nano bash-completion sudo net-tools inetutils-ping git
sleep 3
rm /etc/apt/apt.conf.d/docker-clean
apt update

#apt -y install openssh-server

echo -e "tototutu\ntototutu" | passwd root
useradd --create-home -s /bin/bash ubuntu
echo -e "tototutu\ntototutu" | passwd ubuntu
adduser ubuntu sudo
