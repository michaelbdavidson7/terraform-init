#!/bin/bash

python --version
apt-get update
apt install python pip -y

pip install --upgrade pip
curl -O https://releases.hashicorp.com/terraform/0.11.2/terraform_0.11.2_linux_amd64.zip
mkdir /bin/terraform
unzip terraform_0.11.2_linux_amd64.zip /bin/terraform

export PATH=$PATH:/bin/terraform
terraform --version


pip install awscli --upgrade 
apt-get update
apt-get install software-properties-common
apt-add-repository ppa:ansible/ansible
apt-get update
apt-get install ansible -y 
ansible --version

# he makes a directory to do stuff install
mkdir terraform-scripts
cd terraform-scripts

# generate key
#ssh-keygen
#/root/.ssh/kryptonite
#ssh-agent bash
# ssh-add ~/.ssh/kryptonite
#ssh-add -l

#nano /etc/ansible/ansible.cfg 
# uncomment host_key_checking=False

