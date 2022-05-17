#!/bin/bash

cd /home/anas/npm/helloworld
pwd
echo $$

echo `git log -1 HEAD --pretty=format:%s`
