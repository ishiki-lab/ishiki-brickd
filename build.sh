# ishiki-brickd Dockerfile

docker buildx create --name ishikibuilder --use
docker buildx use ishikibuilder
docker buildx inspect --bootstrap

docker buildx build --platform=linux/amd64,linux/arm64,linux/arm/v7,linux/arm/v6 -t ishikilab/ishiki-brickd:0.0.1 -f Dockerfile.debian --push .
