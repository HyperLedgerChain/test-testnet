# fabricKafka
Kafka based fabric network setup 
Distribute deployment.

主机1：23.91.102.111
主机2：23.91.102.163

主机2上执行：
docker stop $(docker ps -q); docker rm $(docker ps -aq)
docker network ls
docker network rm distributed_default
docker-compose -f machine2.yaml up -d
主机1上执行：
docker stop $(docker ps -q); docker rm $(docker ps -aq)
docker network ls
docker network rm distributed_default
./byfn.sh up
