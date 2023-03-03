# melihat volume
# Volume sendiri bisa dianggap storage yang digunakan untuk menyimpan data, bedanya dengan Bind Mounts, pada bind mounts, data disimpan pada sistem host, sedangkan pada volume, data di manage oleh Docker
docker volume ls

#  membuat volume
# docker volume create namavolume
docker volume create mongovolume

# menghapus volume
# docker volume rm namavolume
docker volume rm mongovolume

# inti pembelajaran ini lebih ke penggunaan storage di docker