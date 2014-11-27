#!/bin/bash

/root/spark-ec2/copy-dir /root/python27

for node in $SLAVES $OTHER_MASTERS; do
  ssh -t $SSH_OPTS root@$node 'cd /root/python27; yum install -y python27-2.7.8.klbostee-1.x86_64.rpm; python2.7 ez_setup.py setuptools' & sleep 0.3
done
wait

