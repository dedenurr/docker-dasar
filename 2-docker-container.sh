# melihat container yang terpasang keselurhan (walaupun containernya tidak berjalan)
docker container ls -a

# melihat container yang terpasang dan sedang berjalan
docker container ls 

# membuat container
# docker contaner create --name namacontainer namaimage:tag
docker container create --name contohredis redis:latest

# Menjalankan container
# docker container start containerId/namacontainer
docker container start contohredis

# Menghentikan container
# docker container stop containerId/namacontainer
docker container stop contohredis

# menghapus container
# docker container rm containerId/namacontainer
docker container rm contohredis
