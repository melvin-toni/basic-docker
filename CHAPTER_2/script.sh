# FROM instruction
docker build -t melvintoni/from from

docker image ls

# RUN instruction
docker build -t melvintoni/run run

docker build -t melvintoni/run run --progress=plain --no-cache

## Categorize image by repository name
docker image ls | grep melvintoni