#!/usr/bin/env bash
#Petit script pour créer mon environnement git ;-)
#hv180601.1549


#export GIT_AUTHOR_NAME="Christian Zufferey"
#export GIT_AUTHOR_EMAIL="christian@zufferey.com"
#export GIT_COMMITTER_NAME="Christian Zufferey"
#export GIT_COMMITTER_EMAIL="christian@zufferey.com"


git config --global user.name "Hugo Valente"
git config --global user.email "hugo.valente1996@gmail.com"
git config --global credential.helper "cache --timeout=3000"
git config --global core.editor vim

alias gtree='git log --graph --oneline --decorate --all'

git config -l
env |grep GIT



echo "end"
