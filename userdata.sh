#!bin/bash

yum install ansible pip3.11-pip.norch -y &>>opt/userdata.log
pip3.11 install botocore boto3 &>>opt/userdata.log
ansible-pull -i localhost, -U https://github.com/Annepuvarunkumar/roboshop-ansible.git main.yml -e component=${component} -e env=${env} &>>opt/userdata.log

