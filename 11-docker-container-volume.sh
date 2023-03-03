#  membuat volume
# docker volume create namavolume
docker volume create mongodata

# menyalin data ke container atau sebaliknya
# --mount "type=volume,source=namavolume,destination=//data//db" karena windows haru menggunakan //
docker container create --name mongovolume --publish 27019:27017 --mount "type=volume,source=mongodata,destination=//data//db" --env MONGO_INITDB_ROOT_USERNAME=eko --env MONGO_INITDB_ROOT_PASSWORD=eko mongo:latest

docker container start mongovolume

docker container stop mongovolume

docker container rm mongovolume

docker container create --name mongovolume --publish 27019:27017 --mount "type=volume,source=mongodata,destination=//data//db" --env MONGO_INITDB_ROOT_USERNAME=eko --env MONGO_INITDB_ROOT_PASSWORD=eko mongo:latest

docker container start mongovolume

