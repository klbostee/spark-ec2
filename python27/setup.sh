#!/bin/bash

for node in $SLAVES $OTHER_MASTERS; do
  ssh -t $SSH_OPTS root@$node 'yum install -y python27 python27-setuptools' & sleep 0.3
done
wait
