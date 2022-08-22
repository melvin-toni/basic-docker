docker container create --name mongodata --publish 27018:27017 --mount "type=bind,source=C:\Users\MelvinToni\Desktop\MELVIN-TONI-GUSTAVE\Project\SELF\basic-docker\mongodata,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=melvin --env MONGO_INITDB_ROOT_PASSWORD=melvin mongo:latest

docker container start mongodata

docker container stop mongodata