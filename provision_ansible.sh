#!/bin/bash
echo "Starting provisioning of Ansible..."

sudo apt-get update
sudo apt-get install git -y
sudo apt-get install python-setuptools -y
sudo apt-get install python-dev -y
sudo easy_install pip
#sudo pip install paramiko PyYAML jinja2 httplib2
#sudo apt-get install krb5-user -y
#sudo apt-get install libkrb5-dev -y
#sudo pip install kerberos
sudo apt-get install software-properties-common -y
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt-get update -y
sudo apt-get install ansible -y

