#!/bin/bash

mkdir /root/python27 2> /dev/null
pushd /root/python27

wget http://peak.telecommunity.com/dist/ez_setup.py

yum install -y python27 python27-devel
python2.7 ez_setup.py setuptools

popd
