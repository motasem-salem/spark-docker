#!/bin/bash

service sshd start

$HADOOP_PREFIX/sbin/start-dfs.sh

if [[ $# -ne 0 ]] ; then
  /bin/sh -c $@    
fi
