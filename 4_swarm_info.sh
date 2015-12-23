# Attach docker cli to the swarm master host
eval $(docker-machine env --swarm swarm-master)

# Lists swarm information
docker info

# List containers
docker ps -a