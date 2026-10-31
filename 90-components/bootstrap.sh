#!/bin/bash
set -e
set -x
component=$1
env=$2
dnf install ansible -y
ansible-pull -U https://github.com/BhavyaAudisri/ansible-roboshop-roles-tf.git -e component=$1 -e env=$2 main.yaml