#!/bin/bash

#yum install ansible -y &>>/opt/userdata.log

sudo yum install ansible python3.11-pip.noarch -y &>>/opt/userdata.log
sudo pip3.11 install botocore boto3 &>>/opt/userdata.log
ansible-pull -i localhost, -U https://github.com/Annepuvarunkumar/roboshop-ansible.git main.yml -e component=${component} -e env=${env} &>>/opt/userdata.log








