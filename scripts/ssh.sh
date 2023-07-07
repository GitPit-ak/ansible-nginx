#!/bin/bash
sudo ssh-keygen -t rsa -N '' -f ~/.ssh/id_rsa <<< y
ssh-copy-id -i ~/.ssh/id_rsa.pub  vagrant@192.168.1.56
ssh-copy-id -i ~/.ssh/id_rsa.pub  vagrant@192.168.1.56