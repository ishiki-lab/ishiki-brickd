# ishiki-brickd Dockerfile

docker run -it -p 4223:4223 --privileged --device /dev/spidev0.0:/dev/spidev0.0 --rm --name brickd arupiot/ishiki-brickd:mini
