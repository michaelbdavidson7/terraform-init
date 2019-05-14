#!/bin/bash

# he says we need python 2
python --version
apt-get update
#sudo apt-get update && sudo apt-get -y upgrade
apt install python python-pip unzip -y
pip install --upgrade pip

# install terraform
curl -O https://releases.hashicorp.com/terraform/0.11.2/terraform_0.11.2_linux_amd64.zip
mkdir /bin/terraform
unzip terraform_0.11.2_linux_amd64.zip -d /bin/terraform
export PATH=$PATH:/bin/terraform
terraform --version

# install awscli
pip install awscli --upgrade 
apt-get update

# install ansible
apt-get install software-properties-common -y
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install ansible -y 
ansible --version

# he makes a directory to do stuff with the install
mkdir terraform-scripts
cd terraform-scripts

# he generates a key
#ssh-keygen
#/root/.ssh/kryptonite
#ssh-agent bash
# ssh-add ~/.ssh/kryptonite
#ssh-add -l

#nano /etc/ansible/ansible.cfg 
# uncomment host_key_checking=False

