#!/bin/bash

#REMOVE previous installation
sudo apt-get remove docker docker-engine docker.io containerd runc 
sudo apt autoremove -y
sudo apt-get update
sudo apt-get upgrade -y 

sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
echo "printing key"
sudo apt-key fingerprint 0EBFCD88 
echo "9DC8 5822 9FC7 DD38 854A E2D8 8D81 803C 0EBF CD88 <<---this must be printed"
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

# sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker 
docker ps -a
