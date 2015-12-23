# Create a nginx server on the swarm master host, connected to the mynet network
docker run -itd -p 8080:80 --name=web --net=mynet -e constraint:node==swarm-master nginx

# Create a container in any host but the master, also connected to the mynet network and print the nginx homepage
docker run -it --net=mynet -e affinity:container!=web  busybox wget -O- http://web
