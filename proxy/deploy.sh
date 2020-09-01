#! /bin/bash

deploy_dir=/root/proxy

ssh root@davidhettler.net mkdir -p $deploy_dir
scp -r * root@davidhettler.net:$deploy_dir
ssh root@davidhettler.net docker-compose -p proxy -f $deploy_dir/docker-compose.yml up -d


