docker network create --driver bridge mongonetwork

docker container create --name mongodbn --network mongonetwork --env MONGO_INITDB_ROOT_USERNAME=melvin --env MONGO_INITDB_ROOT_PASSWORD=melvin mongo:latest

docker image pull mongo-express:latest

docker container create --name mongodbexpress --network mongonetwork --publish 8081:8081 --env ME_CONFIG_MONGODB_URL="mongodb://melvin:melvin@mongodbn:27017" mongo-express:latest

docker container start mongodbn

docker container start mongodbexpress

# Delete container from network
docker network disconnect mongonetwork mongodbn

# Add network to the existing container
docker network connect mongonetwork mongodbn