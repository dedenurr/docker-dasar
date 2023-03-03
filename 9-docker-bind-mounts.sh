# menyalin data ke container
# --mount "type=bind,source=/c/docker/docker-dasar/mongo-data,destination=/data/db"
docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=/c/docker/docker-dasar/mongo-data,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME="dede" --env MONGO_INITDB_ROOT_PASSWORD="pass" mongo:latest