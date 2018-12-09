# README.md

先进入目录： 

cd bin 

下载所必需的镜像： 

./get-docker-images.sh 

主机1：18.179.212.4（东京） 主机2：52.83.251.211（宁夏）

进入目录 : 

 cd ../distributed/

主机2上先执行： 

docker stop $(docker ps -q);  docker rm \$(docker ps -aq) 

docker network ls 

docker network rm distributed_default 

docker-compose -f machine2.yaml up -d 

主机1上执行： 

docker stop $(docker ps -q); docker rm \$(docker ps -aq) 

docker network ls 

docker network rm distributed_default 

./byfn.sh up
