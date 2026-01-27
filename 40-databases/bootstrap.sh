#!/bin/bash
component=$1
dnf install ansible -y
ansible-pull -U https://github.com/user-bolla/ansible-roboshop-roles-tf-main.git -e component=$component main.yaml