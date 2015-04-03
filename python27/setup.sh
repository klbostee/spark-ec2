#!/bin/bash

/root/spark-ec2/copy-dir /root/python27

for node in $SLAVES $OTHER_MASTERS; do
  ssh -t $SSH_OPTS root@$node 'cd /root/python27; yum install -y python27; python2.7 ez_setup.py setuptools' & sleep 0.3
done
wait

