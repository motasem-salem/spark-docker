#!/bin/bash

service sshd start
ssh-keygen -t dsa -P '' -f ~/.ssh/id_dsa
cat ~/.ssh/id_dsa.pub >> ~/.ssh/authorized_keys
chmod 0600 ~/.ssh/authorized_keys

echo StrictHostKeyChecking no >> /etc/ssh/ssh_config
