#!/bin/bash

#Intall docker on Gnu/Linux : amd64 architecture

# step 1: remove old version
sudo apt-get remove docker docker-engine docker.io containerd runc

# step 2: update apt packgaes
sudo apt-get update

sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common
# step 3: add docker's official GPG key
curl -fsSL https://download.docker.com/linux/debian/gpg | sudo apt-key add -

# step 4: verify that you have the key with fingerprint
sudo apt-key fingerprint 0EBFCD88

# step 5: add stable repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
# step 6 : install docker engine
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io

# step 7: verify that Docker Engine is installed correctly

sudo docker run hello-world


# step 6: create  docker group
sudo groupadd docker

# step 7: add user to the docker group 
sudo usermod -aG docker $USER


