# melihat network
docker network ls

# membuat network
# docker network create --driver bridge namanetwork
docker network create --driver bridge contohnetwork

# menghaoys network
# docker network rm namanetwork
docker network rm contohnetwork


# fungsi docker network => Dengan menggunakan Network, kita bisa mengkoneksikan container dengan container lain dalam satu Network yang sama
# pada docker network ada beberapa jenis diantaranya bridge, host dan none, untuk windows tidak bisa menggunakan host
# alternatif network host pada windows bisa lihat di https://techcommunity.microsoft.com/t5/itops-talk-blog/docker-host-network-alternatives-for-windows-containers/ba-p/3390115