# MANUAL
## 1. Docker created
docker container create --name mongovolumect --publish 27019:27017 --mount "type=volume,source=mongovolume,destination=/data/db" --env MONGO_INITDB_ROOT_USERNAME=melvin --env MONGO_INITDB_ROOT_PASSWORD=melvin mongo:latest

docker container start mongovolumect

docker volume ls

## 2. Stop docker which data will be backed up
docker container stop mongovolumect

## 3. Create new temporary container used for backup process
docker container create --name nginxbackup --mount "type=bind,source=C:\Users\MelvinToni\Desktop\MELVIN-TONI-GUSTAVE\Project\SELF\basic-docker\backup,destination=/backup" --mount "type=volume,source=mongovolume,destination=/data" nginx:latest

docker container start nginxbackup

docker container exec -i -t nginxbackup /bin/bash

cd backup

tar cvf /backup/backup.tar.gz /data

exit

## 4. Stop and remove temp container
docker container stop nginxbackup

docker container rm nginxbackup

# AUTO IN 1 COMMAND
## Use Ubuntu image because it will stop once command is complete
## --rm is used to remove temp container once run command is completed
docker container stop mongovolumect

docker image pull ubuntu:latest

docker container run --rm --name ubuntubackup --mount "type=bind,source=C:\Users\MelvinToni\Desktop\MELVIN-TONI-GUSTAVE\Project\SELF\basic-docker\backup,destination=/backup" --mount "type=volume,source=mongovolume,destination=/data" ubuntu:latest tar cvf /backup/backup.tar.gz /data
