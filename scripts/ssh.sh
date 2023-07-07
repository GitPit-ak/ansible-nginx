#!/bin/bash
sudo -u vagrant ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa <<< y
sudo -u vagrant ssh-copy-id -i ~/.ssh/id_rsa.pub -o StrictHostKeyChecking=no vagrant@192.168.1.56
sudo -u vagrant ssh-copy-id -i ~/.ssh/id_rsa.pub -o StrictHostKeyChecking=no vagrant@192.168.1.57