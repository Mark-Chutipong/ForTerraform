#/bash

sudo useradd jenkins -u 1001 -g 1000 -m -s /bin/bash
sudo mkdir -p /var/jenkins_home
sudo chown jenkins:ec2-user /var/jenkins_home
sudo apt-get -y install docker-ce
