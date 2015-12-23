# Create a host using docker-machine with generic driver to be the swarm master. Consul host will be used for discovery
docker-machine create \
	-d generic --generic-ip-address 192.168.1.104 --generic-ssh-user docker \
	--swarm --swarm-master \
	--swarm-discovery="consul://$(docker-machine ip consul):8500" \
	--engine-opt="cluster-store=consul://$(docker-machine ip consul):8500" \
	--engine-opt="cluster-advertise=eth0:2376" \
	swarm-master
