# Create an overlay network called "mynet"
docker network create --driver overlay mynet

# Check the network status in the cluster
docker network ls
