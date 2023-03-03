# komunikasi container dengan menggunakan network

# 1. buat networknya terlebih dahulu
docker network create --driver bridge mongonetwork

#  2. buat container 1 dan koneksikan dengan network mongonetwork 
docker container create --name mongodb --network mongonetwork --env  MONGO_INITDB_ROOT_USERNAME="dede" --env MONGO_INITDB_ROOT_PASSWORD="pass" mongo:latest

# 3. buat image baru (optional)
docker image pull mongo-express:latest

#  4. buat container 2 dan koneksikan dengan network mongonetwork
docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env  ME_CONFIG_MONGODB_URL="mongodb://dede:pass@mongodb:27017/" mongo-express:latest

# 5. start container 1
docker container start mongodb

# 6. start container 2
docker container start mongodbexpress


# disconnect network
docker network disconnect mongonetwork mongodb

# connect network
docker network connect mongonetwork mongodb


