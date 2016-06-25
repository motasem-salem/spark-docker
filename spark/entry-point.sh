#!/bin/bash

function tail_log {
  while [ 1 ];
  do
    tail -f /usr/local/spark-1.5.2-bin-hadoop2.6/logs/*.out
    sleep 1
  done
}

/usr/local/spark-1.5.2-bin-hadoop2.6/sbin/start-master.sh

[[ $@ ]] || { tail_log; exit; }

/bin/sh -c $@
