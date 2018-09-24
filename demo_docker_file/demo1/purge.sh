#!/bin/bash
#Petit script pour nettoyer tout le binz
#zf180924.1553
# source: https://docs.google.com/document/d/1XfmqM2_10ie_5dRs0U0oajgB7EioPJi_1ACtamhb1rY/edit#


docker container kill titi1
docker container rm titi1
docker image rm titi:001 titi:002 titi:003 titi:004




