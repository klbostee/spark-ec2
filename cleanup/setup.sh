#!/bin/bash

# rectify create_image.sh not cleaning up after itself
for node in $SLAVES $OTHER_MASTERS; do
  ssh -t $SSH_OPTS root@$node 'rm -rf /tmp/*.tar.gz; rm -rf /tmp/hadoop-*' & sleep 0.3
done
wait
