# docker-cluster
Helper to run a node into docker cluster

## Configuration
Create the `env.sh` file by copying `env.sh.dist`
```
cp env.sh.dist env.sh
```

Edit this file and update values compared to your node information

## Run
Launch every necessary services with command below

If the node is a master node
```
make master
```
else if it is a slave node
```
make slave
```

## Stop services
```
make stop
```
