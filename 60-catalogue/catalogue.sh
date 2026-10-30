#!/bin/bash

component=$1
dnf install ansible-core -y
ansible-pull --version
ansible-pull -U https://github.com/BhavyaAudisri/ansible-roboshop-roles-tf.git -e component=$1 -e env=$2 main.yaml