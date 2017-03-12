#!/bin/bash

docker stop gollum
docker rm gollum

docker rmi gollum_img

docker build -t gollum_img .

docker run -d -v `pwd`:/wiki -p 4567:80 gollum
