#!/bin/sh

ip=`(cd terraform && terraform output -raw ip)`

echo "$ip ansible_user=ubuntu ansible_ssh_private_key_file=secrets/aws-ec2-tobi.pem" > ansible/inventory.ini