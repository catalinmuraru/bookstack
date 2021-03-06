#/bin/bash
# https://docs.docker.com/install/linux/docker-ce/ubuntu/
sudo DEBIAN_FRONTEND=noninteractive apt-get install --assume-yes apt-transport-https ca-certificates gnupg-agent software-properties-common
sudo -i
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
sudo apt-get update
sudo DEBIAN_FRONTEND=noninteractive apt-get install --assume-yes docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker vagrant
sudo service docker restart
