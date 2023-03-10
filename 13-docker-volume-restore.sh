docker volume create mongorestore

# buat container baru untuk restore dan langsung restore
docker container run --rm --name ubunturestore --mount "type=bind,source=/c/docker/docker-dasar/backup,destination=//backup" --mount "type=volume,source=mongorestore,destination=//data" ubuntu:latest bash -c "cd //data && tar xvf //backup//backup.tar.gz --strip 1 "


# restore container 
docker container create --name mongorestore --publish 27020:27017 --mount "type=volume,source=mongorestore,destination=//data//db" --env MONGO_INITDB_ROOT_USERNAME=eko --env MONGO_INITDB_ROOT_PASSWORD=eko mongo:latest


docker container start mongorestore
