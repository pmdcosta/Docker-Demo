# Pull images from docker-hub to every node on the cluster
docker pull ehazlett/interlock
docker pull ehazlett/docker-demo

# Create an haproxy load balancer container in the swarm-master. Whenever a new container with a hostname and port is added to the cluster
# in any host, haproxy will add them to the load balancing pool, using the hostname/port as a aggregation of containers to load balance
docker run -p 80:80 -d \
	-v /etc/docker:/etc/docker \
	-e constraint:node==swarm-master \
	ehazlett/interlock \
	--swarm-url $DOCKER_HOST \
	--swarm-tls-ca-cert=/etc/docker/ca.pem \
	--swarm-tls-cert=/etc/docker/server.pem \
	--swarm-tls-key=/etc/docker/server-key.pem \
	--plugin haproxy \
	start
