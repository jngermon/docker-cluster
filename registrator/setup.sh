#!/bin/bash

source ../env.sh

cp ./docker-compose.yml.tpl ./docker-compose.yml

sed -i -- "s/__NODE_NAME__/$NODE_NAME/g" ./docker-compose.yml
sed -i -- "s/__NODE_IP__/$NODE_IP/g" ./docker-compose.yml
sed -i -- "s/__CONSUL_API_PORT__/$CONSUL_API_PORT/g" ./docker-compose.yml
