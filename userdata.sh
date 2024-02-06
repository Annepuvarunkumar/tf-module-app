#!/bin/bash

yum install ansible -y &>>/opt/userdata.log
#yum install ansible python3.11-pip.noarch -y &>>/opt/userdata.log
#pip3 install botocore boto3 &>>/opt/userdata.log
ansible-playbook -i localhost, -U https://github.com/Annepuvarunkumar/roboshop-ansible.git main.yml -e component=${component} -e env=${env} &>>/opt/userdata.log






