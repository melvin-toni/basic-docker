docker container create --name contohmongo --publish 27017:27017 --env MONGO_INITDB_ROOT_USERNAME=melvin --env MONGO_INITDB_ROOT_PASSWORD=melvin mongo:latest

docker container start contohmongo