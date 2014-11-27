#!/bin/bash

mkdir /root/python27 2> /dev/null
pushd /root/python27

wget https://github.com/klbostee/spark-ec2/releases/download/v4.1/python27-2.7.8.klbostee-1.x86_64.rpm
wget http://peak.telecommunity.com/dist/ez_setup.py

yum install -y python27-2.7.8.klbostee-1.x86_64.rpm
python2.7 ez_setup.py setuptools

popd
