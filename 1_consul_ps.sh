# Attach docker cli to the Consul host
eval "$(docker-machine env consul)"

# Should list the consul container running
docker ps
