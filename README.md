# DockerClientServer
1) fileserver.sh and fileclient.sh needs to be run as a non-root user in the parent directory of the server and client folders(Ideally /home/ubuntu folder)
2) First fileserver.sh needs to be run and then fileclient.sh
3) Server folder contains the Dockerfile for Server, the program which will be run inside the container and a random text file
4) Client folder contains the Dockerfile for Client and the program which will run inside the container
5) Check the clientvol1 to see if file is created post running the scripts
(The command `docker volume inspect clientvol1` will give the location of this volume on the host machine)
6) cleanup.sh is to delete the containers, volumes and network
