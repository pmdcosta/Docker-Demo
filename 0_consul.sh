# Create/provision host using the generic driver on docker-machine for cluster discovery and network management using Consul
docker-machine create \
	-d generic \
	--generic-ip-address 192.168.1.103 \
	--generic-ssh-user docker \
	consul

# Setup Consul K/V container
docker $(docker-machine config consul) run -d \
    -p "8500:8500" \
    -h "consul" \
    progrium/consul -server -bootstrap