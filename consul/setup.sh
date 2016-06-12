#!/bin/bash

source ../env.sh

cp ./config/local.json.tpl ./config/local.json

sed -i -- "s/__BOOTSTRAP__/$BOOTSTRAP/g" ./config/local.json
sed -i -- "s/__NODE_IP__/$NODE_IP/g" ./config/local.json
sed -i -- "s/__NODE_NAME__/$NODE_NAME/g" ./config/local.json
sed -i -- "s/__ENCRYPT__/$ENCRYPT/g" ./config/local.json
sed -i -- "s/__DATACENTER_NAME__/$DATACENTER_NAME/g" ./config/local.json
sed -i -- "s/__MANAGERS_IPS__/$MANAGERS_IPS/g" ./config/local.json

cp ./docker-compose.yml.tpl ./docker-compose.yml

sed -i -- "s/__NODE_NAME__/$NODE_NAME/g" ./docker-compose.yml
sed -i -- "s/__NODE_IP__/$NODE_IP/g" ./docker-compose.yml
sed -i -- "s/__CONSUL_API_PORT__/$CONSUL_API_PORT/g" ./docker-compose.yml
