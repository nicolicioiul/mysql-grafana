#!/bin/bash

ARG1="$1"

if [ ARG1 = "" ]; then
 echo "
 To devops.sh , run:
 ./devops.sh param[s]

 Options:
 ./devops.sh deploy
 "
 exit
fi

# All commands
if [ "$ARG1" = "deploy" ]; then
  git checkout .
  git pull
  docker-compose build
  docker-compose down
  docker-compose up -d
  echo "Deployment done."
fi
