#!/bin/bash

USER_REPO="$1"
USER_DOCKER="$2"

GIT_URL="https://github.com/${USER_REPO}.git"

git clone $GIT_URL

IFS='/'

read -a  userRepo <<< "$USER_REPO"

cd ${userRepo[1]}

ls

docker build . -t "$USER_DOCKER"

docker push "$USER_DOCKER"

cd ..

rm -rf ${userRepo[1]}

exit
