# membatasi resource pada container mengunakan perintah --memory jumlah batas --cpus jumlah batas
docker container create --name smallnginx --memory 100m --cpus 0.5 --publish 8081:80 nginx:latest