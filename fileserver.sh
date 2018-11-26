cd server
sudo docker network create mynetwork1
sudo docker volume create clientvol1
sudo docker volume create servervol1
sudo docker build -t myserver1 .
sudo docker run -d -v servervol1:/serverdata --network=mynetwork1 --network-alias=myserver --name=myserver1 myserver1

