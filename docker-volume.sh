docker volume ls

docker volume create mongovolume

docker container create --name mongovolumect --publish 27019:27017 --mount "type=volume,source=mongovolume,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=melvin --env MONGO_INITDB_ROOT_PASSWORD=melvin mongo:latest

docker container start mongovolumect

docker container stop mongovolumect

docker container rm mongovolumect

docker volume rm mongovolume