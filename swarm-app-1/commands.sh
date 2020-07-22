#!/bin/bash

# Network Stuff
docker network create -d overlay frontend-network
docker network create -d overlay backend-network

# Service Stuff
# vote service
docker service create --name vote --network frontend-network -p 80:80 --replicas 3 bretfisher/examplevotingapp_vote

# redis service
docker service create --name redis --network frontend-network redis:3.2

# worker service
docker service create --name worker --network frontend-network --network backend-network bretfisher/examplevotingapp_worker:java

# db service
docker service create --name db --network backend-network -e POSTGRES_HOST_AUTH_METHOD=trust --mount type=volume,source=db-data,target=/var/lib/postgresql/data postgres:9.4

# result service
docker service create --name result --network backend-network -p 5001:80 bretfisher/examplevotingapp_result
