#!/bin/bash
docker stop $(docker ps -aq);
docker rm $(docker ps -aq);
docker network ls;
docker network rm distributed_default;
docker-compose -f machine2.yaml up 
