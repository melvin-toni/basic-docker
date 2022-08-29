docker volume create mongorestore

docker container run --rm --name ubunturestore --mount "type=bind,source=C:\Users\MelvinToni\Desktop\MELVIN-TONI-GUSTAVE\Project\SELF\basic-docker\backup,destination=/backup" --mount "type=volume,source=mongorestore,destination=/data" ubuntu:latest bash -c "cd /data && tar xvf /backup/backup.tar.gz --strip 1"
