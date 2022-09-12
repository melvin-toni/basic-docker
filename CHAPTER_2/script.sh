# FROM instruction
docker build -t melvintoni/from from

docker image ls

# RUN instruction
docker build -t melvintoni/run run

docker build -t melvintoni/run run --progress=plain --no-cache

## Categorize image by repository name
docker image ls | grep melvintoni

# COMMAND instruction
docker build -t melvintoni/command command

docker image inspect melvintoni/command

docker container create --name command melvintoni/command

docker container start command

docker container ls -a

docker container logs command

# LABEL instruction
docker build -t melvintoni/label label

docker image inspect melvintoni/label