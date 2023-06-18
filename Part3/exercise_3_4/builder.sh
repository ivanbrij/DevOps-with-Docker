#!/bin/sh

USER_REPO="$1"
DOCKER_REPO="$2"

GIT_URL="https://github.com/${USER_REPO}.git"

git clone $GIT_URL

userRepo=$(echo "$USER_REPO" | cut -d '/' -f 2)

cd $userRepo

ls

echo "$DOCKER_USER" "$DOCKER_PWD"

docker login -u "$DOCKER_USER" -p "$DOCKER_PWD"

docker build . -t "$DOCKER_REPO"

docker push "$DOCKER_REPO"

cd ..

rm -rf $userRepo

exit
