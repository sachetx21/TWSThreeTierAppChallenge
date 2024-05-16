#!/bin/bash
sudo apt update -y
sudo apt install docker.io -y
sudo systemctl enable docker
sudo systemctl start docker
sudo docker ps
sudo usermod -aG docker $USER
newgrp docker
docker ps
sudo chmod 777 /var/run/docker.sock

#docker network create three-tier-network
#docker network ls
#docker network inspect three-tier-network