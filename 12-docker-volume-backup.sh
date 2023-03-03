# 1. Tahapan Backup Volume
# matikan volume yang akan di backup
docker container stop mongovolume

# buat container baru untuk backup
docker container create --name nginxbackup --mount "type=bind,source=/c/docker/docker-dasar/backup,destination=//backup" --mount "type=volume,source=mongodata,destination=//data" nginx:latest


# jalankan container backup yang telah dibuat
docker container start nginxbackup

# cek data di ngixbackup
docker container exec -i -t nginxbackup //bin//sh

#  lakukan backup
tar cvf /backup/backup.tar.gz /data

# stop container backup yang telah dibuat
docker container stop nginxbackup


# hapus container backup yang telah dibuat
docker container rm nginxbackup

#jalankan volume yangtelah di backup
docker container start mongovolume


# 2. latihan backup volume secara langsung

# pakai image ubuntu, agar sekali jalan
docker image pull ubuntu:latest

# matikan volume yang akan di backup
docker container stop mongovolume


# buat container baru untuk backup dan langsung backup
docker container run --rm --name ubuntubackup --mount "type=bind,source=/c/docker/docker-dasar/backup,destination=//backup" --mount "type=volume,source=mongodata,destination=//data" ubuntu:latest tar cvf //backup/backup-lagi.tar.gz //data



