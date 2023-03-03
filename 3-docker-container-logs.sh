 # membuat container
# docker contaner create --name namacontainer namaimage:tag
docker container create --name contohredis redis:latest


# Menjalankan container
# docker container start containerId/namacontainer
docker container start contohredis


# melihat logs pada container yang dibuat
# docker container logs namacontainer
docker container logs contohredis

# melihat logs pada container yang dibuat secara realtime
# docker container logs namacontainer
docker container logs -f contohredis