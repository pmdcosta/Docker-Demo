# Create worker hosts using docker-machine and attach them to the cluster using the Consul host for discovery
docker-machine create \
	-d generic --generic-ip-address 192.168.1.105 --generic-ssh-user docker \
    --swarm \
    --swarm-discovery="consul://$(docker-machine ip consul):8500" \
    --engine-opt="cluster-store=consul://$(docker-machine ip consul):8500" \
    --engine-opt="cluster-advertise=eth0:2376" \
  	swarm-node01

docker-machine create \
	-d generic --generic-ip-address 192.168.1.106 --generic-ssh-user docker \
    --swarm \
    --swarm-discovery="consul://$(docker-machine ip consul):8500" \
    --engine-opt="cluster-store=consul://$(docker-machine ip consul):8500" \
    --engine-opt="cluster-advertise=eth0:2376" \
  	swarm-node02


