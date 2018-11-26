docker build -t myclient1 .
docker run -d -v clientvol1:/clientdata --network=mynetwork1 --network-alias=myclient --name=myclient1 myclient1 

