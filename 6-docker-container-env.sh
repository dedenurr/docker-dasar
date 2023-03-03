# meginstall/,membuat image
#  docker image pull namaimage:tag
docker image pull mongo:latest

# docker container create --name namacontainer  --publish portOS:portDocker --env KEY="Value" namaimage:tag
docker container create --name contohmongo --publish 27017:27017 --env  MONGO_INITDB_ROOT_USERNAME="dede" --env MONGO_INITDB_ROOT_PASSWORD="pass" mongo:latest