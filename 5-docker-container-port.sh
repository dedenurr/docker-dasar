# meginstall/,membuat image
#  docker image pull namaimage:tag
docker image pull nginx:latest


#  melakukan  port forwarding dari container ke OS yang ada di laptop ke port yang ada di docker
# docker container create --name namacontainer  --publish portOS:portDocker namaimage:tag
docker container create --name contohnginx --publish 8080:80 nginx:latest

