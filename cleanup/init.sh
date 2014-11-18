#!/bin/bash

# rectify create_image.sh not cleaning up after itself
pushd /tmp
rm -rf apache-maven-*.tar.gz
rm -rf hadoop-*.tar.gz
popd
