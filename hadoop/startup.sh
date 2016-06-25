#!/bin/bash

service sshd start

if [[ $# -ne 0 ]] ; then
  /bin/sh -c $@    
fi
